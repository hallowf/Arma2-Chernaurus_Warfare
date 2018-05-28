//FIXME - not working on subdirectory

// Check server
if (!isServer) exitwith {};

// The battery
_Click_Battery = mlrs_command;

// Templates
_heTemplate = ["IMMEDIATE", "HE", 0, 8];

// position to fire
hint "Awaiting for click";

mapClick = false;

onMapSingleClick "clickpos = _pos;mapClick = true;true;";

waituntil {mapClick};

hint "Coordinates received";

// Check if in range, and fire
if ([_Click_Battery, clickpos, _heTemplate select 1] call BIS_ARTY_F_PosInRange) then
{
     [_Click_Battery, clickpos, _heTemplate] call BIS_ARTY_F_ExecuteTemplateMission;
     hint "Firing...";
} else
{
     hint "Out of range!";
};
