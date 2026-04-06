/*
 * Author: AgentDove
 * Starts a JIP compatible timer on all clients.
 * format string is same as https://community.bistudio.com/wiki/format with %1 being the time in MM:SS
 *
 * Arguments:
 * 0: Time in seconds <SCALER>
 * 1: Hint string format <STRING> (optional)
 *
 * Return Value:
 * Nil
 *
 * Example:
 * call compile preprocessFile "timer.sqf";
 */

params ["_seconds", ["_format", "Time remaining: %1"]];

if (isNil "ASOT_timer") then {
    ASOT_timer = {
        if ((!hasInterface && !isServer) || missionNamespace getVariable ["ASOT_timer_running", false]) exitWith {};

		ASOT_timer_running = true;

        while {
            ASOT_timer_timeEnd > cba_missionTime
        } do {
            hintSilent format [ASOT_timer_format, [ASOT_timer_timeEnd - cba_missionTime,"MM:SS"] call BIS_fnc_secondsToString];
            sleep 1;
        };

        if isServer then {
            remoteExec ["", 0, "ASOT_timer"];
        };
		
		ASOT_timer_running = false;

        sleep 30;
        hintSilent "";
    };
    publicVariable "ASOT_timer";
};

missionNamespace setVariable ["ASOT_timer_timeEnd", cba_missionTime + _seconds, true];
missionNamespace setVariable ["ASOT_timer_format", _format, true];

remoteExec ["ASOT_timer", 0, "ASOT_timer"];