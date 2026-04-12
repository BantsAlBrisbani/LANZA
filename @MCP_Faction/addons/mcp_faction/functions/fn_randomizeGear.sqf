params ["_unit"];

if (isNull _unit) exitWith {};
if (!local _unit) exitWith {};

if (_unit getVariable ["MCP_GearRandomized", false]) exitWith {};
_unit setVariable ["MCP_GearRandomized", true];

private _cfg = configOf _unit;
private _vestPool = ["V_Simc_mk56_alt","V_Simc_mk56_sks_alt","V_Simc_mk56_sks"];
private _helmetPool = ["CUP_H_US_patrol_cap_OD","CUP_H_SLA_BeretRed","CUP_H_FR_BandanaGreen","H_Simc_MC_hat_1"];
private _facePool = ["CUP_G_Scarf_Face_Red","CFP_Shemagh_Face_Red","CUP_FR_NeckScarf5","G_Bandanna_blk","SP_Balaclava_Black"];

if (isArray (_cfg >> "MCP_vestPool")) then { _vestPool = getArray (_cfg >> "MCP_vestPool"); };
if (isArray (_cfg >> "MCP_helmetPool")) then { _helmetPool = getArray (_cfg >> "MCP_helmetPool"); };
if (isArray (_cfg >> "MCP_facePool")) then { _facePool = getArray (_cfg >> "MCP_facePool"); };

if (_vestPool isEqualTo []) then { _vestPool = ["V_Simc_mk56_alt"]; };
if (_helmetPool isEqualTo []) then { _helmetPool = ["CUP_H_US_patrol_cap_OD"]; };
if (_facePool isEqualTo []) then { _facePool = [""]; };

private _oldVestItems = vestItems _unit;

removeVest _unit;
private _newVest = selectRandom _vestPool;
if (_newVest != "") then { _unit addVest _newVest; };

{
    if (_x != "") then
    {
        if (_unit canAddItemToVest _x) then
        {
            _unit addItemToVest _x;
        }
        else
        {
            _unit addItem _x;
        };
    };
} forEach _oldVestItems;

removeHeadgear _unit;
private _newHelmet = selectRandom _helmetPool;
if (_newHelmet != "") then { _unit addHeadgear _newHelmet; };

removeGoggles _unit;
private _newFace = selectRandom _facePool;
if (_newFace != "") then { _unit addGoggles _newFace; };
