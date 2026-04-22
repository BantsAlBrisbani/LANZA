params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

[_object, 1] call ace_cargo_fnc_setSize;

_object setVariable ["ace_cargo_noRename", true, true];


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];