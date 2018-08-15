/*
	author: 10Dozen
	description: Sets fired event handler for all clients
	input: 0: OBJECT - artillery unit, 1: STRING - type ("Mortar" or "Howitzer")
	returns: nothing
	example:
*/
#include "..\macro.hpp"

params["_v","_type"];

// Remote exec over all clients + JIP
[
	_v
	, [
		"Fired"
		, compile format ["[_this, '%1'] spawn %2", _type, SVAR(fnc_handleFlare)]
	]
] remoteExec ["addEventhandler", 0, true];