/*
    File: initServer.sqf

    Classname notification version.
    ONLY Point 1 is ticket-managed.

    Point 2 and Point 3 are not created, tracked, or referenced by this system.
    If you want other respawns, create them separately outside this script.
*/

TCK_RESPAWN_SIDE = west;     // Change to east / independent / civilian if needed.

// Point 1 ticket count.
// Use -1 for unlimited Point 1.
missionNamespace setVariable ["TCK_tickets_P1", 3, true];

// Marker and display name for the only managed respawn point.
missionNamespace setVariable ["TCK_marker_P1", "mkr_respawn_point_1", true];
missionNamespace setVariable ["TCK_name_P1", "Point 1", true];

/*
    Ticket-message recipients by current unit classname.

    Any connected player whose `typeOf player` matches one of these
    classnames receives Point 1 ticket announcements.

    To find a classname in-game, run locally:
        copyToClipboard typeOf player;
*/
missionNamespace setVariable [
    "TCK_notifyClasses_P1",
    [
        "B_officer_F"

    ],
    false
];

// Basic marker-name validation.
private _p1Marker = missionNamespace getVariable ["TCK_marker_P1", "mkr_respawn_point_1"];

if ((getMarkerPos _p1Marker) isEqualTo [0,0,0]) then {
    diag_log format [
        "[TCK] WARNING: Marker %1 may be missing or located at [0,0,0].",
        _p1Marker
    ];
};

// Point 1 is the only respawn position this script creates.
["P1"] call TCK_fnc_refreshRespawnPosition;

diag_log "[TCK] Spawn ticket system initialized. Point 1 only. Point 2/3 not tracked or created.";
