private _previousStatePrimary = !(primaryWeapon player isEqualTo "");
private _previousStateSecondary = !(handgunWeapon player isEqualTo "");
private _previousStateLauncher = !(secondaryWeapon player isEqualTo "");

while {true} do 
{
    sleep 1;
    
    private _hasPrimaryWeapon = !(primaryWeapon player isEqualTo "");
    private _hasSecondaryWeapon = !(handgunWeapon player isEqualTo "");
    private _hasLauncherWeapon = !(secondaryWeapon player isEqualTo "");
    
    if (_hasPrimaryWeapon != _previousStatePrimary) then {
        _previousStatePrimary = _hasPrimaryWeapon;
    };
    
    if (_hasSecondaryWeapon != _previousStateSecondary) then {
        _previousStateSecondary = _hasSecondaryWeapon;
    };
    
    if (_hasLauncherWeapon != _previousStateLauncher) then {
        _previousStateLauncher = _hasLauncherWeapon;
    };

    if (_hasPrimaryWeapon || _hasSecondaryWeapon || _hasLauncherWeapon) then {player setCaptive false;} else {player setCaptive true;};
};