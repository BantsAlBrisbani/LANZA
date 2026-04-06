params [["_spawner",objNull,[objNull]],["_category", false, [false]]];

_category = [[],["Golf"]] select _category;

[_spawner, "AA Launchers", "Box_NATO_WpsLaunch_F", "object", _category + ["Launchers"], {}, {call compileScript ["actions\golf\spawn_golf_launchers_AA.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "AT Launchers", "Box_NATO_WpsLaunch_F", "object", _category + ["Launchers"], {}, {call compileScript ["actions\golf\spawn_golf_launchers_AT.sqf"]}] call ADS_fnc_addSpawnerItem;

[_spawner, "Golf Statics", "Box_NATO_Support_F", "object", _category + ["Static Weapons"], {}, {call compileScript ["actions\golf\spawn_golf_statics.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Section GMG", "Box_NATO_Support_F", "object", _category + ["Static Weapons"], {}, {call compileScript ["actions\golf\spawn_section_gmg.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Section HMG", "Box_NATO_Support_F", "object", _category + ["Static Weapons"], {}, {call compileScript ["actions\golf\spawn_section_hmg.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Section MMG", "Box_NATO_Support_F", "object", _category + ["Static Weapons"], {}, {call compileScript ["actions\golf\spawn_section_mmg.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Section GMG Ammo", "Box_NATO_Ammo_F", "object", _category + ["Static Weapons"], {}, {call compileScript ["actions\golf\spawn_section_gmg_ammo.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Section HMG Ammo", "Box_NATO_Ammo_F", "object", _category + ["Static Weapons"], {}, {call compileScript ["actions\golf\spawn_section_hmg_ammo.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Section MMG Ammo", "Box_NATO_Ammo_F", "object", _category + ["Static Weapons"], {}, {call compileScript ["actions\golf\spawn_section_mmg_ammo.sqf"]}] call ADS_fnc_addSpawnerItem;

[_spawner, "Mortars", "Box_NATO_Wps_F", "object", _category + ["Indirect fire"], {}, {call compileScript ["actions\golf\spawn_golf_mortars.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "L16 Mortar Ammo", "UK3CB_BAF_SupplyCrate_L16_Ammo_Mixed", "object", _category + ["Indirect fire"], {}, {call compileScript ["actions\golf\spawn_golf_l16mortar_ammo.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "M6 Mortar Ammo", "UK3CB_BAF_Box_M6_Ammo_Mixed", "object", _category + ["Indirect fire"], {}, {call compileScript ["actions\golf\spawn_golf_m6mortar_ammo.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "82mm Mortar Ammo", "BOX_IED_Exp_f", "object", _category + ["Indirect fire"], {}, {call compileScript ["actions\golf\spawn_golf_82mm_mortar_ammo.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "M119 Howitzer Ammo", "Box_NATO_WpsSpecial_F", "object", _category + ["Indirect fire"], {}, {call compileScript ["actions\golf\spawn_golf_m119.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Sholef Ammo", "Box_NATO_AmmoVeh_F", "object", _category + ["Indirect fire"], {}, {call compileScript ["actions\golf\spawn_golf_sholef_ammo.sqf"]}] call ADS_fnc_addSpawnerItem;