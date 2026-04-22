params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

[_object, 4] call ace_cargo_fnc_setSize;

[_object, true, [0, 2, 1], 0, true, true] call ace_dragging_fnc_setCarryable;
// Object is alrady an ammo source
[_object, 1600] call ace_rearm_fnc_setSupplyCount;

_object setVariable ["ace_cargo_noRename", true, true];


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];