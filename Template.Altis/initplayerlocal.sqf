if (!hasInterface) exitWith {}; //This is so the scripting doesn't run on a headless client.


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


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Mission Intro Text and Music ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// To have the mission intro text run immediately as each player loads in, uncomment the script below. 

//execVM  "scripts\missionOpening.sqf";

//Otherwise you can run it manually whenever you like during the mission but running this code via the debug. Obviously remove the 2x forward slashes at the start when running it manually. 

//{execVM "scripts\missionOpening.sqf"} forEach allPlayers;
