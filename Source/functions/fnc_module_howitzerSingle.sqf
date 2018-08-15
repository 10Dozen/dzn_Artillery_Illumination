/*
	author: 10Dozen
	description: Handle Zeus 'Howitzer illumination' module and creates single artillery illumination round w. attached flare
	input: 	0: OBJECT 	- curator placed module
	returns: nothing
	example:
*/

#include "..\macro.hpp"

params ["_module"];

private _shell = (getPosATL _module) call GVAR(fnc_module_spawnShell);
[[_shell, "howitzer", true], SVAR(fnc_setFlareEffect), true, false] spawn BIS_fnc_MP;

// Removing placed logic
_module spawn {
	private _timeout = 8;

	[
		localize "STR_Flares_Module_Hint_Title"
		, localize "STR_Flares_H_Module_Hint_Text"
		, _timeout
	] call BIS_fnc_curatorHint;

	sleep _timeout;
	deleteVehicle _this;
};