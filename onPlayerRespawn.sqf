/*
    File: onPlayerRespawn.sqf

    Runs locally for the respawned player.

    Only Point 1 is ticket-managed.
    No Point 2 / Point 3 logic exists in this file.
*/

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

// Do not remove tickets on initial join, JIP, or reconnect initial spawn.
if (isNull _oldUnit) exitWith {};

[_newUnit] spawn {
    params ["_unit"];

    // Give the engine time to place the unit at the selected respawn.
    sleep 0.25;

    if (isNull _unit) exitWith {};
    if (_unit != player) exitWith {};

    private _p1Marker = missionNamespace getVariable ["TCK_marker_P1", "mkr_respawn_point_1"];
    private _p1Pos = getMarkerPos _p1Marker;
    private _distance = (getPosATL _unit) distance2D _p1Pos;

    // Only Point 1 is tracked.
    // Any other respawn point created outside this system is ignored.
    if (_distance > 25) exitWith {};

    [_unit, "P1"] remoteExecCall ["TCK_fnc_requestSpawnTicket", 2];
};
