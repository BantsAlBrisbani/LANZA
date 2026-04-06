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
	["ace_csw_100Rnd_127x99_mag_green", 10],
	["ace_csw_staticHMGCarry", 2],
	["ace_csw_m3CarryTripod", 2],
	["ace_csw_m3CarryTripodLow", 2],
	["CUP_AGS30_carry", 2],
	["ace_csw_sag30CarryTripod", 2],
	["CUP_compats_29Rnd_30mm_AGS30_M", 20],
	["UK3CB_BAF_Tripod", 4],
	["UK3CB_BAF_L134A1", 2],
	["UK3CB_BAF_32Rnd_40mm_G_Box", 10],
	["UK3CB_BAF_L7A2", 2],
	["UK3CB_BAF_762_200Rnd_T", 10]
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