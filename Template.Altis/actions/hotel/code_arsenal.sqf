params ["_crate", "_itemsFile", ["_text", "Arsenal"]];

if (!hasInterface) exitWith {};
if (isNull _crate) exitWith {};

if (!fileExists _itemsFile) exitWith {
	if (local _crate) then {
		systemChat format ["Error: file not found: %1", _itemsFile];
	};
};

private _itemsList = call compileScript [_itemsFile];

if !(_itemsList isEqualTypeAll "") exitWith {
	if (local _crate) then {
		systemChat "Error: wrong output type. Is not ARRAY or contains not STRING";
	};
};

_itemsList = [_itemsList] call ADA_fnc_itemsIntersect;

[_crate, _itemsList, false] call ace_arsenal_fnc_addVirtualItems;

_crate addAction [
	format ["Open %1", _text],
	{
		params ["_target", "_caller"];
		[_target, _caller] call ace_arsenal_fnc_openBox
	},
	nil,
	3,
	true,
	true,
	"",
	"[_this, _originalTarget] call ace_common_fnc_canInteractWith",
	5
];