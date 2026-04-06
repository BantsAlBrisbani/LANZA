params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

// Things this large are a little bit buggy when carry spawning
// Do setCarryable next frame after ADS decides to carry or not
[_object, false] call ace_dragging_fnc_setCarryable;
[
	{
		params ["_object"];
		[_object, true, [0, 4, 1], 90, true, true] call ace_dragging_fnc_setCarryable;
	}, [_object]
] call CBA_fnc_execNextFrame;

[_object, -1] call ace_cargo_fnc_setSpace;