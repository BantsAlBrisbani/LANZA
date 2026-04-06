/* Author: AgentDove
 * Adds the ADS menu and all action for Echo
 *
 * Arguments:
 * 0: Spawner <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [this] call compileScript ["actions\echo\spawn_menu.sqf"];
 */

params [["_spawner",objNull,[objNull]]];

if (isNull _spawner) exitWith {};

private _file = __FILE__ select [count getMissionPath ""];
private _fileInit = format ["init_%1", _file];
if (_spawner getVariable [_fileInit, false]) exitWith {};

[_spawner, [0,-2,0], 5] call ADS_fnc_initSpawner;

[_spawner, false] call compileScript ["actions\golf\spawn_options.sqf"];
[_spawner] call compileScript ["actions\spawn_option_empty.sqf"];


_spawner setVariable [_fileInit, true];
_spawner setVariable ["ADP_init", compile format ["[['ASOT_callFile', ['%1',[_this # 0]]] call CBA_fnc_globalEventJIP, _this # 0] call CBA_fnc_removeGlobalEventJIP;", _file]];