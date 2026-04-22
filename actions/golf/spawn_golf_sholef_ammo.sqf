params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

// Remove any items from the crate.
clearWeaponCargoGlobal _object;
clearItemCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearBackpackCargoGlobal _object;

[_object, 15500] call ace_rearm_fnc_setSupplyCount;

[_object, true, [0, 2, 1], 0, true, true] call ace_dragging_fnc_setCarryable;
[_object, 4] call ace_cargo_fnc_setSize;
_object setVariable ["ace_cargo_customName", _text, true];
_object setVariable ["ace_cargo_noRename", true, true];


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];