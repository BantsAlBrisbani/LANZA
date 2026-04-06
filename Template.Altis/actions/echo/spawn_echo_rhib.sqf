params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

_object setVariable ["BIS_enableRandomization", false, true];

[_object, true, [0, 3, 0], 180, true, true] call ace_dragging_fnc_setDraggable;

[_object, 6] call ace_cargo_fnc_setSize;
[_object, 4] call ace_cargo_fnc_setSpace;

_object setVariable ["ace_cargo_noRename", true, true];


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];