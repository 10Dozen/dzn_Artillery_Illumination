/*
	author: 10Dozen
	description: Process flare illumination effect on given round and type
	input: 0: OBJECT - projectile to attach, 1: STRING - round type ("Mortar" or "Howitzer" shell)
	returns: nothing
	example:
*/
#include "..\macro.hpp"

params["_o",["_type", "mortar"]];

private _enabled = false;
private _color = [1,1,1];
private _range = 0;
private _intensity = 0;
private _deviation = 0;

switch toLower(_type) do {
	case "mortar": {
		_enabled = GVAR(M_Enabled);
		_range = GVAR(M_Range);
		_intensity = GVAR(M_Intensity);
		_deviation = GVAR(M_Deviation);
		_color = GVAR(M_Color);
	};
	case "howitzer": {
		_enabled = GVAR(H_Enabled);
		_range = GVAR(H_Range);
		_intensity = GVAR(H_Intensity);
		_deviation = GVAR(H_Deviation);
		_color = GVAR(H_Color);
	};
};

if !(_enabled) exitWith {};

waitUntil { velocity _o select 2 < 0 };
waitUntil { sleep 1; getPos _o select 2 < 240 };

private _flare = "#lightpoint" createVehicleLocal (getPosVisual _o);
_flare setLightAmbient _color;
_flare setLightColor _color;
_flare setLightIntensity _intensity;
_flare setLightUseFlare true;
_flare setLightAttenuation [_range, 1, 100, 0, 50, (_range - 10)];
_flare setLightDayLight false;
_flare attachTo [_o, [0,0,0]];

private _h = getPos _o select 2;
_range = _range / 2 / 240;

while { _h > 1  } do {
// hint format ["H: %1 , R: %2", _h, 2*_h*_range];

	sleep ((random 0.01) + 0.05);
	_flare setLightIntensity (_intensity + random (_intensity*_deviation/100));
	_flare setLightAttenuation [2.5*_h*_range, 1, 0, 4.31918e-005, 50, 2.5*_h*_range + 50];

	_h = getPos _o select 2;
	if (_h <= 1) exitWith { deleteVehicle _flare; };
};

deleteVehicle _flare;