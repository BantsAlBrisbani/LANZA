/*
    File: functions\tickets\fn_receiveClassMessage.sqf
    Runs on selected clients only.
*/

params ["_message"];

if (!hasInterface) exitWith {};
if (isNull player) exitWith {};

// This appears in the player's group chat channel,
// but only clients selected by classname receive this call.
player groupChat format ["HQ: %1", _message];
