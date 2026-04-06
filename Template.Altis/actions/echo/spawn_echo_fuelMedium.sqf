params ["","",["_object",objNull,[objNull]],"_text"];

if (isNull _object) exitWith {};

[_object, 1200, [[-0.516602,0.359262,0.5],[0.481445,0.269417,0.5],[0.485352,-0.355583,0.5],[-0.128906,-0.336051,0.5]]] remoteExecCall ["ace_refuel_fnc_makeSource", 2];

[_object, 4] call ace_cargo_fnc_setSize;

[_object, true, [0, 2, 1], 0, true, true] call ace_dragging_fnc_setCarryable;

_object setVariable ["ace_cargo_noRename", true, true];
_object setVariable ["ace_cargo_customName", _text, true];


private _file = __FILE__ select [count getMissionPath ""];
_object setVariable ["ADP_init", compile format ["[nil,nil,_this # 0,'%2'] call compileScript ['%1']", _file, _text], true];