/*
	author: 10Dozen
	description: none
	input: nothing
	returns: nothing
	example:
*/
#include "..\macro.hpp"

{
	publicVariable _x
} forEach [
	SVAR(fnc_setFlareEffectGlobal)
    , SVAR(fnc_setFlareEffect)
	, SVAR(M_Enabled)
    , SVAR(M_List)
    , SVAR(M_Range)
    , SVAR(M_Intensity)
    , SVAR(M_Deviation)
	, SVAR(H_Enabled)
    , SVAR(H_List)
    , SVAR(H_Range)
    , SVAR(H_Intensity)
    , SVAR(H_Deviation)
];
