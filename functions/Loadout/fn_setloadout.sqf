params ["_unit"];

// Clear existing gear
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

// Clothing
_unit forceAddUniform "U_Simc_TCU_mk1_roll_blench";
// Weapons
// Items
// Assigned gear
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkitem "TFAR_rf7800str";