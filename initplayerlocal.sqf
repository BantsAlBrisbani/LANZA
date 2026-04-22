
//if (!hasInterface) exitWith {}; //This is so the scripting doesn't run on a headless client.


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Intel/data Entry At Mission Start ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

[] spawn
  {
  	waitUntil {sleep 1; player == player};
  	// [player,["dataEntry1","dataEntry2"]]call MRH_fnc_MilsimTools_SoldierTab_attributeData; 	//This is any data entries/intel that you want visible at the start of the mission that will be visible to everyone. 
  	// [player,["pic1"]]call MRH_fnc_MilsimTools_SoldierTab_attributePictures; //This is any pictures that you want visible at the start of the mission that will be visible to everyone.
  };

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Fuel Consumption Script ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

player addEventHandler ["GetInMan", {[_this select 2] execVM "scripts\kp_fuel_consumption.sqf";}];


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Allow Incognito 'Undercover' Mode ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// To turn on incognito mode, simply uncomment out the script below. 

// player execVM "scripts\switchSide.sqf";

//test//
systemChat str (!isNil "TAG_fnc_restoreDeathLoadout");
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Mission Intro Text and Music ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// To have the mission intro text run immediately as each player loads in, uncomment the script below. 

//execVM  "scripts\missionOpening.sqf";

//Otherwise you can run it manually whenever you like during the mission but running this code via the debug. Obviously remove the 2x forward slashes at the start when running it manually. 

//{execVM "scripts\missionOpening.sqf"} forEach allPlayers;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ remove loadout ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

[player] call TAG_fnc_setLoadout;

//~~~~~~~~~respawn ticket system~~~~~~~~~~~~~~~//

// diag_log "=== RSPV2 initPlayerLocal.sqf LOADED ===";

// if (!hasInterface) exitWith {};
// if (!(side player isEqualTo west)) exitWith {};

// missionNamespace setVariable ["RSPV2_canReport", false];

// /*
    // Installs exactly one Killed EH on the current player object.
    // On death, save the player's CURRENT carried loadout.
// */
// missionNamespace setVariable ["RSPV2_fnc_installKilledEH", {
    // if (!hasInterface) exitWith {};
    // if (isNull player) exitWith {};
    // if (!(side player isEqualTo west)) exitWith {};

    // private _oldEH = player getVariable ["RSPV2_killedEH", -1];
    // if (_oldEH >= 0) then {
        // player removeEventHandler ["Killed", _oldEH];
    // };

    // private _eh = player addEventHandler ["Killed", {
        //Save the exact kit the player died with
        // missionNamespace setVariable ["RSPV2_savedLoadout", getUnitLoadout player];

        //Allow respawn reporting
        // missionNamespace setVariable ["RSPV2_canReport", true];

        // diag_log format [
            // "[RSPV2] %1 died. Loadout saved and respawn will be reported.",
            // name player
        // ];
    // }];

    // player setVariable ["RSPV2_killedEH", _eh];
    // diag_log format ["[RSPV2] Installed Killed EH %1 on %2", _eh, name player];
// }];

// [] call (missionNamespace getVariable "RSPV2_fnc_installKilledEH");

//intro text 

ASOT_fnc_lanzaVerdeIntro = {
	[] spawn {
		private _introHandle = [
			[
				["OPERATION LANZA VERDE", "<t align = 'center' shadow = '1' size = '2.5' font='PuristaBold'>%1</t><br/>"],
				["Week 1", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 60]
			]
		] spawn BIS_fnc_typeText;

		waitUntil { scriptDone _introHandle };

		private _sitrepHandle = [
			["Island of San Cordoba", 1, 1],
			["March 15th, 1985", 1, 5, 1]
		] spawn BIS_fnc_EXP_camp_SITREP;

		waitUntil { scriptDone _sitrepHandle };

		[
			["LAST MCP CONTACT: D+10.", 1, 1],
			["ASOT TO CONDUCT ROUTINE PRESENCE PATROLS.", 1, 5, 1]
		] spawn BIS_fnc_EXP_camp_SITREP;
	};
};