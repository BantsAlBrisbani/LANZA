params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

// Remove any items from the crate.
clearWeaponCargoGlobal _object;
clearItemCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearBackpackCargoGlobal _object;

// Fill the crate with items.
{
    _object addItemCargoGlobal [_x select 0, _x select 1]
} forEach [
    ["ACE_1Rnd_82mm_Mo_HE", 200],
    ["ACE_1Rnd_82mm_Mo_Illum", 30],
    ["ACE_1Rnd_82mm_Mo_Smoke", 50],
	["ACE_1Rnd_82mm_Mo_HE_LaserGuided", 50]
];

private _loadAbs = loadAbs _object;
if (_loadAbs > maxLoad _object) then {
    [_object, _loadAbs] remoteExec ["setMaxLoad",2];
};

[_object, true, [0, 1, 1], 0, true, true] call ace_dragging_fnc_setCarryable;
[_object, 1] call ace_cargo_fnc_setSize;
_object setVariable ["ace_cargo_customName", _text, true];
_object setVariable ["ace_cargo_noRename", true, true];


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];