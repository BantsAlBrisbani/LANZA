if (!hasInterface) exitWith {};
[] spawn {
    while { true } do {
        private _coolDown = 30;
        _armedVehicle = (allTurrets (vehicle player)) findIf { 
        private _weapons = (vehicle player) weaponsTurret _x;(_weapons isNotEqualTo []) && { !("SmokeLauncher" in _weapons || "FlareLauncher" in _weapons) }} != -1;
        private _hasPrimary = primaryWeapon player != "";
        private _hasSecondary = handgunWeapon player != "";
        private _hasLauncher = secondaryWeapon player != "";
        private _hasAnyWeapon = _hasPrimary || _hasSecondary || _hasLauncher;
        private _shouldBeCaptive = !(_hasAnyWeapon || _armedVehicle);
        [player, "setCaptive", "ASOT_weaponCheck", _shouldBeCaptive] call ace_common_fnc_statusEffect_set;
        if !(_shouldBeCaptive) then {sleep _coolDown;} else {sleep 2;};
    };
};