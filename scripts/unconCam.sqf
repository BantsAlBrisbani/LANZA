/*
 * Author: AgentDove
 * Activates ace spectator without hud elements on unconscious.
 *
 * Arguments:
 * Nil
 *
 * Return Value:
 * Nil
 *
 * Example:
 * call compile preprocessFile "unconCam.sqf";
 */

if !hasInterface exitWith {};

ASOT_unconCamOnKnockOut = {
    private _unconTime = CBA_missionTime;
    [[player], []] call ACE_spectator_fnc_updateUnits;
    [[], [west,east,resistance,civilian]] call ACE_spectator_fnc_updateSides;
    [[2], [0,1]] call ACE_spectator_fnc_updateCameraModes;
    [2,player,-2,nil,getDirVisual player] call ACE_spectator_fnc_setCameraAttributes;

    waitUntil {
        sleep .001;
        CBA_missionTime > _unconTime + 3.5;
    };
    [ASOT_unconCamOnActivate] call CBA_fnc_directCall;
};

ASOT_unconCamOnActivate = {

    // Close other displays that could conflict
    private _displayChild = displayChild findDisplay 46;
    if (!isNull _displayChild) then {
        _displayChild closeDisplay 1;
    };

    [
        // Wait untill any other displays are closed
        {isNull displayChild findDisplay 46;},
        {
            [true, true, false] call ACE_spectator_fnc_setSpectator;
            [   
                // Wait untill the spectator display exists
                {!isNull findDisplay 60000},
                {
                    private _display = findDisplay 60000;
                    // Force centre on player
                    [player] call ace_spectator_fnc_setFocus;
                    // Force No unit banner
                    ace_spectator_drawUnits = false;
                    // Force hide units list
                    {
                        _x ctrlSetFade 1;
                        _x ctrlCommit 0;
                    } forEach [(_display displayCtrl 60003), (_display displayCtrl 60004), (_display displayCtrl 60005), (_display displayCtrl 60030)];
                    showChat true;
                    ace_spectator_uiVisible = false;
                    // Force help UI off
                    ace_spectator_uiHelpVisible = false;
                    (_display displayCtrl 60021) ctrlShow false;
                    (_display displayCtrl 60020) ctrlShow false;
                    // Disable map clicking
                    (_display displayCtrl 60014) ctrlSetEventHandler ["MouseButtonClick",""];

                    // Fix for uncon effects active during spectate
                    ace_common_oldIsCamera = true;
                },
                1
            ] call CBA_fnc_waitUntilAndExecute;
        },
        1
    ] call CBA_fnc_waitUntilAndExecute;

};

["ace_unconscious", {
    params [["_unit",objNull,[objNull]],["_uncon",false,[false]]];

    if (_unit == player) then {
        if _uncon then {
            ASOT_unconCamScript = [] spawn ASOT_unconCamOnKnockOut;
        } else {
            if (scriptDone ASOT_unconCamScript) then {
                [false] call ACE_spectator_fnc_setSpectator;

                // The ace variable updates too slow after stopping spectator cam and is blocking effects from happening
                ace_common_oldIsCamera = "" isNotEqualTo call CBA_fnc_getActiveFeatureCamera;
                [false, 1] call ace_medical_feedback_fnc_effectUnconscious;
            } else {
                terminate ASOT_unconCamScript;
            };
        };
    };
}] call CBA_fnc_addEventHandler;

["ace_medical_death", {
    if (param [0,objNull,[objNull]] == player) then {
        if (scriptDone ASOT_unconCamScript) then {
            [false] call ACE_spectator_fnc_setSpectator;
            [false] call ace_common_fnc_disableUserInput;
        } else {
            terminate ASOT_unconCamScript;
        };
    };
}] call CBA_fnc_addEventHandler;