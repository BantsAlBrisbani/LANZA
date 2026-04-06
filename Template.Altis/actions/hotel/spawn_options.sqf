params [["_spawner",objNull,[objNull]],["_category", false, [false]]];

_category = [[],["Hotel"]] select _category;

[_spawner, "Ammo Supplies", "B_supplyCrate_F", "object", _category, {}, {call compileScript ["actions\hotel\spawn_hotel_ammo.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Medical Supplies", "ACE_medicalSupplyCrate_advanced", "object", _category, {}, {call compileScript ["actions\hotel\spawn_hotel_medical.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "FOB Arsenal", "C_IDAP_supplyCrate_F", "object", _category, {}, {call compileScript ["actions\hotel\spawn_fob_arsenal.sqf"]}] call ADS_fnc_addSpawnerItem;

[_spawner, "NVG", "Land_PlasticCase_01_small_black_F", "object", _category + ["Special"], {}, {call compileScript ["actions\hotel\spawn_hotel_nvgs.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Spectrum devices", "Land_PlasticCase_01_small_black_F", "object", _category + ["Special"], {}, {call compileScript ["actions\hotel\spawn_hotel_spectrum.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Section Explosives", "Box_NATO_AmmoOrd_F", "object", _category + ["Special"], {}, {call compileScript ["actions\hotel\spawn_hotel_explosives.sqf"]}] call ADS_fnc_addSpawnerItem;