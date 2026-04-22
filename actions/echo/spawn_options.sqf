params [["_spawner",objNull,[objNull]],["_category", false, [false]]];

_category = [[],["Echo"]] select _category;

[_spawner, "Demolitions", "Box_NATO_AmmoOrd_F", "object", _category + ["Explosives"], {}, {call compileScript ["actions\echo\spawn_echo_demolitions.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Mines", "Box_NATO_AmmoOrd_F", "object", _category + ["Explosives"], {}, {call compileScript ["actions\echo\spawn_echo_mines.sqf"]}] call ADS_fnc_addSpawnerItem;


[_spawner, "Engineering Cart", "Land_ToolTrolley_02_F", "object", _category + ["Supplies", "Tools"], {}, {call compileScript ["actions\echo\spawn_echo_toolsSmall.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Engineering Crane", "Land_EngineCrane_01_F", "object", _category + ["Supplies", "Tools"], {}, {call compileScript ["actions\echo\spawn_echo_toolsMedium.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Engineering Container", "B_Slingload_01_Repair_F", "object", _category + ["Supplies", "Tools"], {}, {call compileScript ["actions\echo\spawn_echo_toolsLarge.sqf"]}] call ADS_fnc_addSpawnerItem;

[_spawner, "Fuel Barrel", "FlexibleTank_01_sand_F", "object", _category + ["Supplies", "Fuel"], {}, {call compileScript ["actions\echo\spawn_echo_fuelSmall.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Fuel Pallet", "CargoNet_01_barrels_F", "object", _category + ["Supplies", "Fuel"], {}, {call compileScript ["actions\echo\spawn_echo_fuelMedium.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Fuel Container", "B_Slingload_01_Fuel_F", "object", _category + ["Supplies", "Fuel"], {}, {call compileScript ["actions\echo\spawn_echo_fuelLarge.sqf"]}] call ADS_fnc_addSpawnerItem;

[_spawner, "Ammo Box", "Box_NATO_Ammo_F", "object", _category + ["Supplies", "Ammo"], {}, {call compileScript ["actions\echo\spawn_echo_ammoSmall.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Ammo Crate", "Box_NATO_AmmoVeh_F", "object", _category + ["Supplies", "Ammo"], {}, {call compileScript ["actions\echo\spawn_echo_ammoMedium.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Ammo Container", "B_Slingload_01_Ammo_F", "object", _category + ["Supplies", "Ammo"], {}, {call compileScript ["actions\echo\spawn_echo_ammoLarge.sqf"]}] call ADS_fnc_addSpawnerItem;

[_spawner, "Spare Wheel", "ACE_Wheel", "object", _category + ["Supplies", "Parts"], {}, {}] call ADS_fnc_addSpawnerItem;
[_spawner, "Spare Wheels Set", "Land_WoodenCrate_01_F", "object", _category + ["Supplies", "Parts"], {}, {call compileScript ["actions\echo\spawn_echo_wheels.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Spare Track", "ACE_Track", "object", _category + ["Supplies", "Parts"], {}, {}] call ADS_fnc_addSpawnerItem;
[_spawner, "Spare Tracks Set", "Land_TankTracks_01_long_F", "object", _category + ["Supplies", "Parts"], {}, {call compileScript ["actions\echo\spawn_echo_tracks.sqf"]}] call ADS_fnc_addSpawnerItem;


//[_spawner, "SCUBA Gear", "Land_PlasticCase_01_large_black_F", "object", _category + ["Specialist Gear"], {}, {call compileScript ["actions\echo\spawn_echo_scuba.sqf"]}] call ADS_fnc_addSpawnerItem;
//[_spawner, "APOBS packs", "Land_PlasticCase_01_medium_olive_F", "object", _category + ["Specialist Gear"], {}, {call compileScript ["actions\echo\spawn_echo_APOBS.sqf"]}] call ADS_fnc_addSpawnerItem;
//[_spawner, "LVL1 CBRN Gear", "Land_MetalCase_01_medium_F", "object", _category + ["Specialist Gear"], {}, {call compileScript ["actions\echo\spawn_echo_cbrn_1.sqf"]}] call ADS_fnc_addSpawnerItem;
//[_spawner, "LVL2 CBRN Gear", "Land_MetalCase_01_large_F", "object", _category + ["Specialist Gear"], {}, {call compileScript ["actions\echo\spawn_echo_cbrn_2.sqf"]}] call ADS_fnc_addSpawnerItem;
//[_spawner, "LVL1 Less-Lethal Gear", "Land_PlasticCase_01_medium_black_F", "object", _category + ["Specialist Gear"], {}, {call compileScript ["actions\echo\spawn_echo_lessLethal_1.sqf"]}] call ADS_fnc_addSpawnerItem;
//[_spawner, "LVL2 Less-Lethal Gear", "Land_PlasticCase_01_medium_black_F", "object", _category + ["Specialist Gear"], {}, {call compileScript ["actions\echo\spawn_echo_lessLethal_2.sqf"]}] call ADS_fnc_addSpawnerItem;

//[_spawner, "UAV", "Land_PlasticCase_01_large_gray_F", "object", _category + ["Unmanned Vehicles"], {}, {call compileScript ["actions\echo\spawn_echo_uav.sqf"]}] call ADS_fnc_addSpawnerItem;
//[_spawner, "UGV", "Land_PlasticCase_01_medium_F", "object", _category + ["Unmanned Vehicles"], {}, {call compileScript ["actions\echo\spawn_echo_ugv.sqf"]}] call ADS_fnc_addSpawnerItem;

//[_spawner, "RHIB", "B_Boat_Transport_01_F", "object", _category + ["Vehicles"], {}, {call compileScript ["actions\echo\spawn_echo_rhib.sqf"]}] call ADS_fnc_addSpawnerItem;
//[_spawner, "QuadBike", "B_G_Quadbike_01_F", "object", _category + ["Vehicles"], {}, {call compileScript ["actions\echo\spawn_echo_quadbike.sqf"]}] call ADS_fnc_addSpawnerItem;
//[_spawner, "MotorBike", "CUP_B_M1030_USA", "object", _category + ["Vehicles"], {}, {call compileScript ["actions\echo\spawn_echo_motorbike.sqf"]}] call ADS_fnc_addSpawnerItem;
// Cannot be loaded onto Hemtt
//[_spawner, "Seat rack", "Land_Pod_Heli_Transport_04_bench_Black_F", "object", _category + ["Vehicles"], {}, {call compileScript ["actions\echo\spawn_echo_bench.sqf"]}] call ADS_fnc_addSpawnerItem;