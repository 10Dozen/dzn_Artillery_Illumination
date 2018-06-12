/*
	author: 10Dozen
	description: Handle artillery fired round and adds flare effect if ammo is valid
	input: 0: ARRAY - Fired event handler data, 1: STRING - type of effect to be applied
	returns: nothing
	example:
*/

#include "..\macro.hpp"

params["_eh","_type"];

private _shell = _eh select 6;
if !((typeOf _shell) isKindOf "FlareCore") exitWith {};

[_shell, _type] spawn GVAR(fnc_setFlareEffect);