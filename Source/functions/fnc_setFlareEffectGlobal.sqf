/*
	author: 10Dozen
	description: Start flare effect on each client and server if round is based on FlareCore class
	input: 0: Fired Event Handler data, 1: STRING - source gun type ("Mortar" or "Howitzer")
	returns: nothing
	example:
*/
#include "macro.hpp"
params["_eh","_type"];

private _shell = _eh select 6;

if !(_shell isKindOf "FlareCore") exitWith {};

[[_shell, _type], SVAR(fnc_setFlareEffect), true, true] spawn BIS_fnc_MP;