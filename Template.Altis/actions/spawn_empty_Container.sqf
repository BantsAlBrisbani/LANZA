params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

call compileScript ["actions\spawn_Container.sqf"];

clearWeaponCargoGlobal _object;
clearItemCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearBackpackCargoGlobal _object;

[_object, 6*8*2] call ace_cargo_fnc_setSpace;


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];