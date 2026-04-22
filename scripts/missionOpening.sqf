introHandle = [] spawn {
    // Initialize audio and radio
    enableRadio false;
    0 fadeSpeech 0;
    0 fadeRadio 0;
    0 fadeSound 0;

    _skipIntro = false;

    // Allow player to skip intro by pressing ESC (key code 1)
    _keyHandler = (findDisplay 46) displayAddEventHandler ["KeyDown", {
        params ["_display", "_key", "_shift", "_ctrl", "_alt"];
        if (_key isEqualTo 1) then {
            _skipIntro = true;
            3 fadeSpeech 1;
            3 fadeRadio 1;
            10 fadeSound 1;
            playMusic "";
            enableRadio true;
            terminate introHandle;
            titleText ["", "PLAIN", 0];
            true
        };
        false
    }];

    if (!_skipIntro) then {
        // Play intro sequence
        playMusic "Music_Intro_02_MissionStart";

        titleText ["", "BLACK FADED", -1];
        sleep 1;

        titleText ["<t color='#ffffff' size='1'>Zagarbad - Mogadishu - Somalia<br/>____________________</t><br/><br/><t color='#ffffff' size='1'>3rd October 1993</t>", "BLACK FADED", -1, true, true];
        sleep 7;

        titleText ["", "BLACK FADED", -1];
        sleep 1;

        titleText ["<t color='#ffffff' size='1'>A dangerous warlord by the name of Mohamed Farrah Aidid has arrived in the suburb of Zagarbad which lies on the outskirts of Mogadishu.<br/>The UN needs him in their custody.</t>", "BLACK FADED", -1, true, true];
        sleep 10;

        titleText ["", "BLACK FADED", -1];
        sleep 1;

        titleText ["<t color='#ffffff' size='1'>Aidid is holding a meeting at a known militia villa near the center of town today and now is our time to strike.<br/>With intel arriving from the city, we have the location of the meeting which will not only include Aidid but also a handful of his most trusted and loyal officers.</t>", "BLACK FADED", -1, true, true];
        sleep 10;

        titleText ["", "BLACK FADED", -1];
        sleep 1;

        titleText ["<t color='#ffffff' size='1'>The city is home to thousands of civilians but also contains hundreds, if not thousands, of Aidid’s militia.<br/>They have a strong grip over the city and do not intend on laying down their arms any time soon.</t>", "BLACK FADED", -1, true, true];
        sleep 10;

        titleText ["", "BLACK FADED", -1];
        sleep 1;

        titleText ["<t color='#ffffff' size='1'>ASOT has been called to conduct a routine HVT snatch and grab.<br/>Let’s get it done and be home before dinner.</t>", "BLACK FADED", -1, true, true];
        sleep 10;

        titleText ["", "BLACK FADED", -1];
        sleep 1;

        titleText ["<t color='#ffffff' size='4'>OPERATION GOTHIC SERPENT</t>", "BLACK FADED", -1, true, true];
        sleep 7;

        // Fade back in and end
        3 fadeSpeech 1;
        3 fadeRadio 1;
        10 fadeSound 1;
        enableRadio true;
        sleep 1;

        titleText ["", "BLACK IN", 7, true, true];
        sleep 3;
    };

    // Clean up
    (findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyHandler];
};
