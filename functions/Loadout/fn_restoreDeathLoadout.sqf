params ["_newUnit"];

_newUnit setUnitLoadout (missionNamespace getVariable ["TAG_deadLoadout", getUnitLoadout _newUnit]);