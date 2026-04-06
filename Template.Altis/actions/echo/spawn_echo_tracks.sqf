params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

private _tracksCount = 4;

[_object, 2] call ace_cargo_fnc_setSize;
[_object, _tracksCount * 2] call ace_cargo_fnc_setSpace;

["ACE_Track", _object, _tracksCount, true] call ace_cargo_fnc_addCargoItem;

[_object, true, [0, 1, 1], 90, true, true] call ace_dragging_fnc_setCarryable;

_object setVariable ["ace_cargo_customName", _text, true];
_object setVariable ["ace_cargo_noRename", true, true];


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];