params [["_spawner",objNull,[objNull]]];

[_spawner, "Empty Box", "Land_PlasticCase_01_medium_black_F", "object", ["Empty"], {}, {call compileScript ["actions\spawn_empty_box.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Empty Pallet", "CargoNet_01_box_F", "object", ["Empty"], {}, {call compileScript ["actions\spawn_empty_crate.sqf"]}] call ADS_fnc_addSpawnerItem;
[_spawner, "Empty Container", "B_Slingload_01_Cargo_F", "object", ["Empty"], {}, {call compileScript ["actions\spawn_empty_Container.sqf"]}] call ADS_fnc_addSpawnerItem;