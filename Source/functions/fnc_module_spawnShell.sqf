/*
	author: 10Dozen
	description: Spawn artillery illumination round
	input:		ARRAY 	- pos3d
	returns: 	OBJECT - spawned shell
	example:
		_shell = _pos call dzn_Flares_fnc_module_spawnShell;
*/

private _pos = [_this select 0, _this select 1, 280];

private _shell = "F_40mm_White_Infinite" createVehicle _pos;
_shell setVectorDirandUp [[0,0,-1],[0.1,0.1,1]];
_shell setPosATL _pos;

// Handle constant falling speed

_shell spawn {
	sleep 1;
	_this setVelocity [0,0,-4];

	waitUntil { ((getPosATL _this) select 2) <= 1 };
	deleteVehicle _this;
};

(_shell)