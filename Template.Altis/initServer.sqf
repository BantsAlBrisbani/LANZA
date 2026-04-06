TAG_StartingRespawnDelay = 10;
addMissionEventHandler ["EntityKilled", {
    params ["_unit", "_killer"];

    if (side group _unit == civilian && {(side group _killer) in [west, resistance] && {currentWeapon _unit == ""}}) then {
        TAG_StartingRespawnDelay = TAG_StartingRespawnDelay + 10;
        [[TAG_StartingRespawnDelay,_killer],{
            if ((side group player) in [west, resistance]) then {
            setPlayerRespawnTime (_this # 0);};
            systemChat format ["%2 killed a civilian. Respawn time:%1",[(_this # 0),"MM:SS"] call BIS_fnc_secondsToString,name (_this # 1)];
        }] remoteExec ["call",0,"TAG_respawnDelay"];
    };
}];

// Move all empty vehicles to the first headless client
["ACEX_headless_headlessClientJoined", {
    params ["_headlessClient"];
    private _headlessOwner = owner _headlessClient;
    
    private _vehicles = entities [["AllVehicles"],["Man","Logic"]];
    _vehicles = _vehicles select {crew _x isEqualTo []};
    {_x setOwner _headlessOwner} forEach _vehicles;

    [_thisType, _thisId] call CBA_fnc_removeEventHandler
}] call CBA_fnc_addEventHandlerArgs;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ CBRN Zone Setup ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// 1. Set the name (eg: cbrn1) to be the same as the marker's variable name you've placed in the editor. 
// 2. Set the first number to what you want the strength of the gas to be. (1.5 level 1, 2.5 level 2, 3.5 to 5 is level 3)
// 3. Set the size of the area. The 2 lots of numbers together equal the size of the circle. Eg: the first example below would be a 50m wide circle. The second would be 150m and the third would be 300m

/*
zone1 = [getMarkerPos "cbrn1", 1.5, 25, 25] call cbrn_fnc_createZone;
publicVariable "zone1";

zone2 = [getMarkerPos "cbrn2", 2.5, 50, 100] call cbrn_fnc_createZone;
publicVariable "zone2";

zone3 = [getMarkerPos "cbrn2", 3.5, 100, 200] call cbrn_fnc_createZone;
publicVariable "zone3";
*/