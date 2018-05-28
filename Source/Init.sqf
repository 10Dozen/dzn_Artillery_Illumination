#include "macro.hpp"
#include "Functions.sqf"
#include "Settings.sqf"

if !(isServer) exitWith {};

[] spawn {
	waitUntil { !isNil SVAR(M_List) && !isNil SVAR(H_List) };
	
	call GVAR(fnc_publish);
	
	while { true } do {
		{
			private _v = _x;
			private _isMortar = {_v isKindOf _x} count GVAR(M_List) > 0;
			private _isHowitzer = {_v isKindOf _x} count GVAR(H_List) > 0;

			if (_isMortar || _isHowitzer) then {
				[_v, if (_isMortar) then { "Mortar" } else { "Howitzer" }] call GVAR(fnc_setEHGlobal);
			};

			sleep 0.01;
		} forEach vehicles;

		sleep (7 + random (5));
	};
};