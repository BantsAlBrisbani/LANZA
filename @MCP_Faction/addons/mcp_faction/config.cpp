class CfgPatches
{
    class MCP_Faction
    {
        name = "MCP - LANZA VERDE";
        author = "Bants Al Brisbani";
        requiredVersion = 1.98;
        requiredAddons[] =
        {
            "A3_Characters_F",
            "A3_Characters_F_Common",
            "A3_Data_F"
        };
        units[] =
        {
            "MCP_B_Rifleman",
            "MCP_B_Autorifleman",
            "MCP_B_Medic",
            "MCP_B_TeamLeader",
            "MCP_B_SquadLeader",
			"MCP_B_Radioman",
			"MCP_B_AT_LIGHT",
			"MCP_B_AT_HEAVY",
			"MCP_B_LightRifleman"
        };
        weapons[] = {};
    };
};

class CfgFunctions
{
    class MCP
    {
        class Gear
        {
            class randomizeGear
            {
                file = "\mcp_faction\functions\fn_randomizeGear.sqf";
            };
        };
    };
};

class CfgFactionClasses
{
    class MCP_RED
    {
        displayName = "MCP";
        priority = 2;
        side = 0;
    };
};

class CfgEditorCategories
{
    class MCP_EdCat
    {
        displayName = "MCP";
    };
};

class CfgEditorSubcategories
{
    class MCP_EdSubcat_Infantry
    {
        displayName = "Men";
    };
};

class CfgVehicleClasses
{
    class MCP_Infantry
    {
        displayName = "Infantry";
    };
};

class CfgVehicles
{
    class O_Soldier_F;
    class O_Soldier_GL_F;
    class O_soldier_AR_F;
    class O_medic_F;
    class O_Soldier_TL_F;
    class O_Soldier_SL_F;

    class MCP_B_Rifleman : O_Soldier_F
    {
        author = "BantsAlBrisbani";
        scope = 2;
        scopeCurator = 2;
        displayName = "Rifleman";
        faction = "MCP_RED";
        editorCategory = "MCP_EdCat";
        editorSubcategory = "MCP_EdSubcat_Infantry";
        vehicleClass = "MCP_Infantry";
        side = 0;
        uniformClass = "U_Simc_TCU_tee_erdl_top";
        backpack = "";
        weapons[] = {"CUP_arifle_AKMS_Early","Throw","Put"};
        respawnWeapons[] = {"CUP_arifle_AKMS_Early","Throw","Put"};
        magazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "HandGrenade","HandGrenade","SmokeShell"
        };
        respawnMagazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "HandGrenade","HandGrenade","SmokeShell"
        };
        linkedItems[] =
        {
            "V_PlateCarrier1_rgr","H_HelmetB","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        respawnLinkedItems[] =
        {
            "V_PlateCarrier1_rgr","H_HelmetB","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        MCP_vestPool[] = {"V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier1_rgr"};
        MCP_helmetPool[] = {"H_HelmetB","H_HelmetB_light","H_HelmetB_grass"};
        MCP_facePool[] = {"","","G_Bandanna_khk","G_Balaclava_blk","G_Combat"};
        class EventHandlers
        {
            init = "[_this select 0] call MCP_fnc_randomizeGear;";
            respawn = "[_this select 0] call MCP_fnc_randomizeGear;";
        };
    };

	class MCP_B_LightRifleman : O_Soldier_F
    {
        author = "BantsAlBrisbani";
        scope = 2;
        scopeCurator = 2;
        displayName = "Light Riflemen";
        faction = "MCP_RED";
        editorCategory = "MCP_EdCat";
        editorSubcategory = "MCP_EdSubcat_Infantry";
        vehicleClass = "MCP_Infantry";
        side = 0;
        uniformClass = "U_Simc_TCU_mk1_leg";
        backpack = "";
        weapons[] = {"CUP_SKS","Throw","Put"};
        respawnWeapons[] = {"CUP_SKS","Throw","Put"};
        magazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "HandGrenade","HandGrenade","SmokeShell"
        };
        respawnMagazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "HandGrenade","HandGrenade","SmokeShell"
        };
        linkedItems[] =
        {
            "V_PlateCarrier1_rgr","H_HelmetB","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        respawnLinkedItems[] =
        {
            "V_PlateCarrier1_rgr","H_HelmetB","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        MCP_vestPool[] = {"V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier1_rgr"};
        MCP_helmetPool[] = {"H_HelmetB","H_HelmetB_light","H_HelmetB_grass"};
        MCP_facePool[] = {"","","G_Bandanna_khk","G_Balaclava_blk","G_Combat"};
        class EventHandlers
        {
            init = "[_this select 0] call MCP_fnc_randomizeGear;";
            respawn = "[_this select 0] call MCP_fnc_randomizeGear;";
        };
    };


    class MCP_B_Autorifleman : O_soldier_AR_F
    {
        author = "Bants";
        scope = 2;
        scopeCurator = 2;
        displayName = "Autorifleman";
        faction = "MCP_RED";
        editorCategory = "MCP_EdCat";
        editorSubcategory = "MCP_EdSubcat_Infantry";
        vehicleClass = "MCP_Infantry";
        side = 0;
        uniformClass = "U_Simc_TCU_mk3_erdl_trop";
        backpack = "";
        weapons[] = {"CUP_arifle_RPK74","Throw","Put"};
        respawnWeapons[] = {"CUP_arifle_RPK74","Throw","Put"};
        magazines[] =
        {
            "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M","CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",
            "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M_Tracer","HandGrenade","SmokeShell"
        };
        respawnMagazines[] =
        {
            "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M","CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",
            "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M_Tracer","HandGrenade","SmokeShell"
        };
        linkedItems[] =
        {
            "V_PlateCarrier2_rgr","H_HelmetB","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        respawnLinkedItems[] =
        {
            "V_PlateCarrier2_rgr","H_HelmetB","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        MCP_vestPool[] = {"V_PlateCarrier2_rgr","V_PlateCarrier2_rgr","V_PlateCarrier1_rgr"};
        MCP_helmetPool[] = {"H_HelmetB","H_HelmetB_light","H_HelmetSpecB"};
        MCP_facePool[] = {"","","G_Balaclava_blk","G_Shades_Black"};
        class EventHandlers
        {
            init = "[_this select 0] call MCP_fnc_randomizeGear;";
            respawn = "[_this select 0] call MCP_fnc_randomizeGear;";
        };
    };

    class MCP_B_Medic : O_medic_F
    {
        author = "Bants";
        scope = 2;
        scopeCurator = 2;
        displayName = "Combat Medic";
        faction = "MCP_RED";
        editorCategory = "MCP_EdCat";
        editorSubcategory = "MCP_EdSubcat_Infantry";
        vehicleClass = "MCP_Infantry";
        side = 0;
        attendant = 1;
        icon = "iconManMedic";
        uniformClass = "U_Simc_TCU_mk3_erdl_top";
        backpack = "B_AssaultPack_mcamo";
        weapons[] = {"CUP_arifle_AKMS_Early_semiauto","Throw","Put"};
        respawnWeapons[] = {"CUP_arifle_AKMS_Early_semiauto","Throw","Put"};
        magazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "SmokeShell","SmokeShell","SmokeShellGreen"
        };
        respawnMagazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "SmokeShell","SmokeShell","SmokeShellGreen"
        };
        linkedItems[] =
        {
            "V_PlateCarrier1_rgr","H_HelmetB_light","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        respawnLinkedItems[] =
        {
            "V_PlateCarrier1_rgr","H_HelmetB_light","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        MCP_vestPool[] = {"V_PlateCarrier1_rgr","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr"};
        MCP_helmetPool[] = {"H_HelmetB_light","H_HelmetB_light","H_HelmetB"};
        MCP_facePool[] = {"","","","G_Bandanna_khk","G_Combat"};
        class EventHandlers
        {
            init = "[_this select 0] call MCP_fnc_randomizeGear;";
            respawn = "[_this select 0] call MCP_fnc_randomizeGear;";
        };
    };

    class MCP_B_TeamLeader : O_Soldier_TL_F
    {
        author = "Bants";
        scope = 2;
        scopeCurator = 2;
        displayName = "Team Leader";
        faction = "MCP_RED";
        editorCategory = "MCP_EdCat";
        editorSubcategory = "MCP_EdSubcat_Infantry";
        vehicleClass = "MCP_Infantry";
        side = 0;
        uniformClass = "U_Simc_TCU_mk3_erdl_low";
        backpack = "";
        weapons[] = {"CUP_arifle_AKM","Binocular","Throw","Put"};
        respawnWeapons[] = {"CUP_arifle_AKM","Binocular","Throw","Put"};
        magazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","HandGrenade","SmokeShell","SmokeShellGreen"
        };
        respawnMagazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","HandGrenade","SmokeShell","SmokeShellGreen"
        };
        linkedItems[] =
        {
            "V_PlateCarrierGL_rgr","H_HelmetB_desert","ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"
        };
        respawnLinkedItems[] =
        {
            "V_PlateCarrierGL_rgr","H_HelmetB_desert","ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"
        };
        MCP_vestPool[] = {"V_PlateCarrierGL_rgr","V_PlateCarrierGL_rgr","V_PlateCarrier2_rgr"};
        MCP_helmetPool[] = {"H_HelmetSpecB","H_HelmetB_desert","H_HelmetB","H_HelmetB_grass"};
        MCP_facePool[] = {"","G_Combat","G_Balaclava_combat","G_Bandanna_blk"};
        class EventHandlers
        {
            init = "[_this select 0] call MCP_fnc_randomizeGear;";
            respawn = "[_this select 0] call MCP_fnc_randomizeGear;";
        };
    };
    	class MCP_B_Radioman : O_Soldier_TL_F
    {
        author = "Bants";
        scope = 2;
        scopeCurator = 2;
        displayName = "Radioman";
        faction = "MCP_RED";
        editorCategory = "MCP_EdCat";
        editorSubcategory = "MCP_EdSubcat_Infantry";
        vehicleClass = "MCP_Infantry";
        side = 0;
        uniformClass = "U_Simc_TCU_tee_erdl_long";
        backpack = "B_simc_MC_rajio_1";
        weapons[] = {"CUP_arifle_AKS","Binocular","Throw","Put"};
        respawnWeapons[] = {"CUP_arifle_AKS","Binocular","Throw","Put"};
        magazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","HandGrenade","SmokeShell","SmokeShellGreen"
        };
        respawnMagazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","HandGrenade","SmokeShell","SmokeShellGreen"
        };
        linkedItems[] =
        {
            "V_PlateCarrierGL_rgr","H_HelmetB_desert","ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"
        };
        respawnLinkedItems[] =
        {
            "V_PlateCarrierGL_rgr","H_HelmetB_desert","ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"
        };
        MCP_vestPool[] = {"V_PlateCarrierGL_rgr","V_PlateCarrierGL_rgr","V_PlateCarrier2_rgr"};
        MCP_helmetPool[] = {"H_HelmetSpecB","H_HelmetB_desert","H_HelmetB","H_HelmetB_grass"};
        MCP_facePool[] = {"","G_Combat","G_Balaclava_combat","G_Bandanna_blk"};
        class EventHandlers
        {
            init = "[_this select 0] call MCP_fnc_randomizeGear;";
            respawn = "[_this select 0] call MCP_fnc_randomizeGear;";
        };
    };	
		  class MCP_B_AT_HEAVY : O_Soldier_F
    {
        author = "BantsAlBrisbani";
        scope = 2;
        scopeCurator = 2;
        displayName = "AT - HEAVY";
        faction = "MCP_RED";
        editorCategory = "MCP_EdCat";
        editorSubcategory = "MCP_EdSubcat_Infantry";
        vehicleClass = "MCP_Infantry";
        side = 0;
        uniformClass = "U_Simc_TCU_tee_erdl_top";
        backpack = "CFP_RPGPack_Khaki";
        weapons[] = {"CUP_arifle_AKMS_Early","launch_RPG7_F","Throw","Put"};
        respawnWeapons[] = {"CUP_arifle_AKMS_Early","launch_RPG7_F","Throw","Put"};
        magazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "HandGrenade","HandGrenade","SmokeShell","CUP_PG7VM_M","CUP_PG7VM_M","CUP_PG7VM_M","CUP_PG7VM_M",
        };
        respawnMagazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "HandGrenade","HandGrenade","SmokeShell"
        };
        linkedItems[] =
        {
            "V_PlateCarrier1_rgr","H_HelmetB","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        respawnLinkedItems[] =
        {
            "V_PlateCarrier1_rgr","H_HelmetB","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        MCP_vestPool[] = {"V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier1_rgr"};
        MCP_helmetPool[] = {"H_HelmetB","H_HelmetB_light","H_HelmetB_grass"};
        MCP_facePool[] = {"","","G_Bandanna_khk","G_Balaclava_blk","G_Combat"};
        class EventHandlers
        {
            init = "[_this select 0] call MCP_fnc_randomizeGear;";
            respawn = "[_this select 0] call MCP_fnc_randomizeGear;";
        };
    };
	
	   class MCP_B_AT_LIGHT : O_Soldier_F
    {
        author = "BantsAlBrisbani";
        scope = 2;
        scopeCurator = 2;
        displayName = "AT - LIGHT";
        faction = "MCP_RED";
        editorCategory = "MCP_EdCat";
        editorSubcategory = "MCP_EdSubcat_Infantry";
        vehicleClass = "MCP_Infantry";
        side = 0;
        uniformClass = "U_Simc_TCU_tee_erdl_top";
        backpack = "";
        weapons[] = {"CUP_arifle_AKMS_Early","CUP_launch_RPG18","Throw","Put"};
        respawnWeapons[] = {"CUP_arifle_AKMS_Early","CUP_launch_RPG18","Throw","Put"};
        magazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "HandGrenade","HandGrenade","SmokeShell"
        };
        respawnMagazines[] =
        {
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M","CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M",
            "HandGrenade","HandGrenade","SmokeShell"
        };
        linkedItems[] =
        {
            "V_PlateCarrier1_rgr","H_HelmetB","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        respawnLinkedItems[] =
        {
            "V_PlateCarrier1_rgr","H_HelmetB","ItemMap","ItemCompass","ItemWatch","ItemRadio"
        };
        MCP_vestPool[] = {"V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier1_rgr"};
        MCP_helmetPool[] = {"H_HelmetB","H_HelmetB_light","H_HelmetB_grass"};
        MCP_facePool[] = {"","","G_Bandanna_khk","G_Balaclava_blk","G_Combat"};
        class EventHandlers
        {
            init = "[_this select 0] call MCP_fnc_randomizeGear;";
            respawn = "[_this select 0] call MCP_fnc_randomizeGear;";
        };
    };
	
	class MCP_B_SquadLeader : O_Soldier_SL_F
    {
        author = "Bants";
        scope = 2;
        scopeCurator = 2;
        displayName = "Squad Leader";
        faction = "MCP_RED";
        editorCategory = "MCP_EdCat";
        editorSubcategory = "MCP_EdSubcat_Infantry";
        vehicleClass = "MCP_Infantry";
        side = 0;
        uniformClass = "U_B_CombatUniform_mcam_vest";
        backpack = "";
        weapons[] = {"CUP_SKS","Binocular","Throw","Put"};
        respawnWeapons[] = {"CUP_SKS","Binocular","Throw","Put"};
        magazines[] =
        {
            "CUP_10Rnd_762x39_SKS_M","CUP_10Rnd_762x39_SKS_M","CUP_10Rnd_762x39_SKS_M",
            "1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell",
            "1Rnd_Smoke_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell",
            "HandGrenade","SmokeShell","SmokeShellGreen"
        };
        respawnMagazines[] =
        {
            "CUP_10Rnd_762x39_SKS_M","CUP_10Rnd_762x39_SKS_M","CUP_10Rnd_762x39_SKS_M",
            "1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell",
            "1Rnd_Smoke_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell",
            "HandGrenade","SmokeShell","SmokeShellGreen"
        };
        linkedItems[] =
        {
            "V_PlateCarrierGL_rgr","H_HelmetSpecB","ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"
        };
        respawnLinkedItems[] =
        {
            "V_PlateCarrierGL_rgr","H_HelmetSpecB","ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS"
        };
        MCP_vestPool[] = {"V_PlateCarrierGL_rgr","V_PlateCarrierGL_rgr","V_PlateCarrier2_rgr"};
        MCP_helmetPool[] = {"H_HelmetSpecB","H_HelmetB_desert","H_HelmetB","H_HelmetB_grass"};
        MCP_facePool[] = {"","G_Combat","G_Balaclava_combat","G_Bandanna_blk"};
        class EventHandlers
        {
            init = "[_this select 0] call MCP_fnc_randomizeGear;";
            respawn = "[_this select 0] call MCP_fnc_randomizeGear;";
        };
    };
};

class CfgGroups
{
    class East
    {
        class MCP_RED
        {
            name = "MCP";
            class Infantry
            {
                name = "Infantry";
                class MCP_FireTeam
                {
                    name = "Fire Team";
                    side = 0;
                    faction = "MCP_RED";
                    class Unit0 { side = 0; vehicle = "MCP_B_TeamLeader"; rank = "SERGEANT"; position[] = {0,0,0}; };
                    class Unit1 { side = 0; vehicle = "MCP_B_Rifleman"; rank = "CORPORAL"; position[] = {5,-5,0}; };
                    class Unit2 { side = 0; vehicle = "MCP_B_Rifleman"; rank = "PRIVATE"; position[] = {-5,-5,0}; };
                    class Unit3 { side = 0; vehicle = "MCP_B_Autorifleman"; rank = "PRIVATE"; position[] = {10,-10,0}; };
                };
                class MCP_RifleSquad
                {
                    name = "Rifle Squad";
                    side = 0;
                    faction = "MCP_RED";
                    class Unit0 { side = 0; vehicle = "MCP_B_SquadLeader"; rank = "SERGEANT"; position[] = {0,0,0}; };
                    class Unit1 { side = 0; vehicle = "MCP_B_TeamLeader"; rank = "CORPORAL"; position[] = {5,-5,0}; };
                    class Unit2 { side = 0; vehicle = "MCP_B_Rifleman"; rank = "PRIVATE"; position[] = {-5,-5,0}; };
                    class Unit3 { side = 0; vehicle = "MCP_B_Rifleman"; rank = "PRIVATE"; position[] = {10,-10,0}; };
                    class Unit4 { side = 0; vehicle = "MCP_B_Autorifleman"; rank = "PRIVATE"; position[] = {-10,-10,0}; };
                    class Unit5 { side = 0; vehicle = "MCP_B_Medic"; rank = "PRIVATE"; position[] = {15,-15,0}; };
                };
				class MCP_ATLIGHT
                {
                    name = "AT Team - Light";
                    side = 0;
                    faction = "MCP_RED";
                    class Unit0 { side = 0; vehicle = "MCP_B_TeamLeader"; rank = "SERGEANT"; position[] = {0,0,0}; };
                    class Unit1 { side = 0; vehicle = "MCP_B_AT_LIGHT"; rank = "CORPORAL"; position[] = {5,-5,0}; };
                    class Unit2 { side = 0; vehicle = "MCP_B_Rifleman"; rank = "PRIVATE"; position[] = {-5,-5,0}; };
                    class Unit3 { side = 0; vehicle = "MCP_B_AT_LIGHT"; rank = "PRIVATE"; position[] = {10,-10,0}; };
                };
				class MCP_ATHEAVY
                {
                    name = "AT Team - Light";
                    side = 0;
                    faction = "MCP_RED";
                    class Unit0 { side = 0; vehicle = "MCP_B_TeamLeader"; rank = "SERGEANT"; position[] = {0,0,0}; };
                    class Unit1 { side = 0; vehicle = "MCP_B_AT_LIGHT"; rank = "CORPORAL"; position[] = {5,-5,0}; };
                    class Unit2 { side = 0; vehicle = "MCP_B_Rifleman"; rank = "PRIVATE"; position[] = {-5,-5,0}; };
                    class Unit3 { side = 0; vehicle = "MCP_B_AT_HEAVY"; rank = "PRIVATE"; position[] = {10,-10,0}; };	
				};
				class MCP_PATROL
                {
                    name = "Patrol";
                    side = 0;
                    faction = "MCP_RED";
                    class Unit0 { side = 0; vehicle = "MCP_B_LightRifleman"; rank = "SERGEANT"; position[] = {0,0,0}; };
                    class Unit1 { side = 0; vehicle = "MCP_B_LightRifleman"; rank = "CORPORAL"; position[] = {5,-5,0}; };
                    class Unit2 { side = 0; vehicle = "MCP_B_LightRifleman"; rank = "PRIVATE"; position[] = {-5,-5,0}; };
                    class Unit3 { side = 0; vehicle = "MCP_B_LightRifleman"; rank = "PRIVATE"; position[] = {10,-10,0}; };	
				};
				class MCP_RADIOTEAM
                {
                    name = "Radio team";
                    side = 0;
                    faction = "MCP_RED";
                    class Unit0 { side = 0; vehicle = "MCP_B_TeamLeader"; rank = "SERGEANT"; position[] = {0,0,0}; };
                    class Unit1 { side = 0; vehicle = "MCP_B_Radioman"; rank = "CORPORAL"; position[] = {5,-5,0}; };
                    class Unit2 { side = 0; vehicle = "MCP_B_LightRifleman"; rank = "PRIVATE"; position[] = {-5,-5,0}; };
                    class Unit3 { side = 0; vehicle = "MCP_B_LightRifleman"; rank = "PRIVATE"; position[] = {10,-10,0}; };	
				};
				class MCP_OBSERVER
                {
                    name = "Observers";
                    side = 0;
                    faction = "MCP_RED";
                    class Unit0 { side = 0; vehicle = "MCP_B_TeamLeader"; rank = "SERGEANT"; position[] = {0,0,0}; };
                    class Unit1 { side = 0; vehicle = "MCP_B_Radioman"; rank = "CORPORAL"; position[] = {5,-5,0}; };
				};
			};
        };
    };
};
