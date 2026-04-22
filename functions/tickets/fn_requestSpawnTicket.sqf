/*
    File: functions\tickets\fn_requestSpawnTicket.sqf
    Runs on server.

    Handles Point 1 ticket spending only.
    Point 2 and Point 3 are not tracked, created, or referenced.
*/

params ["_unit", "_pointId"];

if (!isServer) exitWith {};
if (_pointId != "P1") exitWith {};
if (isNull _unit) exitWith {};
if (!isPlayer _unit) exitWith {};

// Make sure the remote caller owns the unit they are reporting for.
private _callerOwner = remoteExecutedOwner;

if (_callerOwner != 0 && {_callerOwner != owner _unit}) exitWith {
    diag_log format [
        "[TCK] Rejected ticket request. Caller owner %1 does not own unit %2 owned by %3.",
        _callerOwner,
        _unit,
        owner _unit
    ];
};

private _uid = getPlayerUID _unit;

if (_uid isEqualTo "") exitWith {
    diag_log "[TCK] Rejected ticket request. Unit has no player UID.";
};

// Prevent accidental duplicate ticket calls from the same player in a tiny window.
private _cooldownKey = format ["TCK_lastTicketRequest_%1", _uid];
private _lastRequestTime = missionNamespace getVariable [_cooldownKey, -9999];

if ((diag_tickTime - _lastRequestTime) < 2) exitWith {
    diag_log format [
        "[TCK] Rejected duplicate ticket request from %1.",
        name _unit
    ];
};

missionNamespace setVariable [_cooldownKey, diag_tickTime, false];

private _marker = missionNamespace getVariable ["TCK_marker_P1", "mkr_respawn_point_1"];
private _ticketVar = "TCK_tickets_P1";
private _displayName = missionNamespace getVariable ["TCK_name_P1", "Point 1"];
private _notifyClassesVar = "TCK_notifyClasses_P1";

// Server-side position validation.
if ((_unit distance2D (getMarkerPos _marker)) > 75) exitWith {
    diag_log format [
        "[TCK] Rejected ticket request from %1 for %2. Unit too far from marker.",
        name _unit,
        _pointId
    ];
};

private _ticketsLeft = missionNamespace getVariable [_ticketVar, 0];

// Unlimited Point 1. No ticket is removed.
if (_ticketsLeft < 0) exitWith {
    diag_log format [
        "[TCK] %1 spawned at unlimited %2. No ticket spent.",
        name _unit,
        _displayName
    ];
};

// Point 1 was already closed, but the client may have had stale menu data.
// No fallback point is used in this version.
if (_ticketsLeft <= 0) exitWith {
    ["Point 1 is closed. No tickets remaining."] remoteExecCall ["TCK_fnc_receiveClassMessage", owner _unit];
};

_ticketsLeft = _ticketsLeft - 1;
missionNamespace setVariable [_ticketVar, _ticketsLeft, true];

diag_log format [
    "[TCK] %1 spawned at %2. Tickets left: %3",
    name _unit,
    _displayName,
    _ticketsLeft
];

// Refresh Point 1 menu label after every valid ticket spend.
[_pointId] call TCK_fnc_refreshRespawnPosition;

// Send ticket message to connected players with configured classnames.
private _targetClasses = missionNamespace getVariable [_notifyClassesVar, []];

private _message = format [
    "%1 used %2. Tickets remaining: %3.",
    name _unit,
    _displayName,
    _ticketsLeft
];

[_targetClasses, _message] call TCK_fnc_sendClassMessage;

// Closure message.
if (_ticketsLeft <= 0) then {
    private _closedMessage = format [
        "%1 is now closed. No tickets remaining.",
        _displayName
    ];

    [_targetClasses, _closedMessage] call TCK_fnc_sendClassMessage;

    diag_log format ["[TCK] %1 closed. No tickets remaining.", _displayName];
};
