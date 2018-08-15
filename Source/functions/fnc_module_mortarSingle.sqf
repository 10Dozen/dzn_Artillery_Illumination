/*
	author: 10Dozen
	description: Handle Zeus 'Mortar illumination' module and creates single artillery illumination round w. attached flare
	input: 	0: OBJECT 	- curator placed module
	returns: nothing
	example:
*/

#include "..\macro.hpp"

params ["_module"];

if !(isServer) exitWith {};

// Notification to Curator
[	
	[localize "STR_Flares_Module_Hint_Title", localize "STR_Flares_M_Module_Hint_Text", 8]
	, "BIS_fnc_curatorHint"
	, objectCurators _module
] call BIS_fnc_MP;

private _shell = (getPosATL _module) call GVAR(fnc_module_spawnShell);
[[_shell, "mortar", true], SVAR(fnc_setFlareEffect), true, false] spawn BIS_fnc_MP;

// Removing placed logic
_module spawn {
	sleep 8;
	deleteVehicle _this;
};