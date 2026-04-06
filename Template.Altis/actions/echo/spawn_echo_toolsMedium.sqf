params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

[_object, -1, 100, 2, 0.25] call perFort_fnc_setFortifyVehicle;
_object setVariable ["ACE_isRepairVehicle", 1, true];
[_object, 1, true] call WR_fnc_addRestoreAction;

[_object, true, [0, 2, 1], 0, true, true] call ace_dragging_fnc_setCarryable;

[_object, 4] call ace_cargo_fnc_setSize;
_object setVariable ["ace_cargo_customName", _text, true];
_object setVariable ["ace_cargo_noRename", true, true];


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];