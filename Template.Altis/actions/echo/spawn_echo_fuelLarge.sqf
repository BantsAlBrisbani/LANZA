params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

call compileScript ["actions\spawn_Container.sqf"];

[_object, "lockInventory", "noInventory", true] call ace_common_fnc_statusEffect_set;


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];