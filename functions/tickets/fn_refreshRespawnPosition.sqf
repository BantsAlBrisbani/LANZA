/*
    File: functions\tickets\fn_refreshRespawnPosition.sqf
    Runs on server.

    Rebuilds Point 1's respawn position so the respawn menu shows
    the exact current ticket count after every ticket spend.

    Only P1 is supported in this package.
*/

params ["_pointId"];

if (!isServer) exitWith {};
if (_pointId != "P1") exitWith {};

private _marker = missionNamespace getVariable ["TCK_marker_P1", "mkr_respawn_point_1"];
private _baseName = missionNamespace getVariable ["TCK_name_P1", "Point 1"];
private _ticketVar = "TCK_tickets_P1";
private _handleVar = "TCK_respawnHandle_P1";

// Remove old Point 1 respawn handle if it exists.
private _oldHandle = missionNamespace getVariable [_handleVar, []];

if !(_oldHandle isEqualTo []) then {
    _oldHandle call BIS_fnc_removeRespawnPosition;
    missionNamespace setVariable [_handleVar, [], false];
};

private _tickets = missionNamespace getVariable [_ticketVar, 0];

private _displayName = "";

if (_tickets < 0) then {
    _displayName = format ["%1 - Unlimited", _baseName];
} else {
    if (_tickets <= 0) exitWith {
        diag_log format ["[TCK] %1 is closed. Tickets: %2", _baseName, _tickets];
    };

    _displayName = format ["%1 - %2 tickets", _baseName, _tickets];
};

private _newHandle = [
    TCK_RESPAWN_SIDE,
    _marker,
    _displayName
] call BIS_fnc_addRespawnPosition;

missionNamespace setVariable [_handleVar, _newHandle, false];

diag_log format ["[TCK] Refreshed respawn menu entry: %1", _displayName];
