params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

call compileScript ["actions\spawn_Container.sqf"];

_object setVariable ["ACE_isRepairFacility", true, true];
_object setVariable ["ACE_isRepairVehicle", 1, true];
[_object, -1, 200, 3, 0] call perFort_fnc_setFortifyVehicle;
[_object, 0.5, true] call WR_fnc_addRestoreAction;


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];