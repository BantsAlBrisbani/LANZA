/*
    File: functions\tickets\fn_sendClassMessage.sqf
    Runs on server.

    Sends a message to all connected players whose current unit classname
    is listed in _targetClasses.
*/

params ["_targetClasses", "_message"];

if (!isServer) exitWith {};
if (_targetClasses isEqualTo []) exitWith {};
if (_message isEqualTo "") exitWith {};

private _targetOwners = [];

{
    private _unit = _x;
    private _className = typeOf _unit;

    if (_className in _targetClasses) then {
        private _clientOwner = owner _unit;

        if (_clientOwner > 0) then {
            _targetOwners pushBackUnique _clientOwner;
        };
    };
} forEach allPlayers;

if (_targetOwners isEqualTo []) exitWith {
    diag_log format [
        "[TCK] No online players matched class message targets %1 for message: %2",
        _targetClasses,
        _message
    ];
};

{
    [_message] remoteExecCall ["TCK_fnc_receiveClassMessage", _x];
} forEach _targetOwners;
