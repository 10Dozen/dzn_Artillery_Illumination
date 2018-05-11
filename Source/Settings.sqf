#include "macro.hpp"
private _add = {
	params ["_var","_type","_val",["_exp", "No Expression"]];
	private _arr = [
		format["dzn_Flares_%1",_var],_type
		,[localize format["STR_Flares_%1",_var], localize format ["STR_Flares_%1_desc", _var]]
		,"dzn Artillery Illumination"
		,_val,true
	];
	if !(typename _exp == "STRING" && { _exp == "No Expression" }) then { _arr pushBack _exp; };
	_arr call CBA_Settings_fnc_init;
};




// Mortars
// Mortars > Enable/disable switch
[
	"M_Enabled"
	, "CHECKBOX"
	, true
] call _add;
// Mortars > List of classnames
[
	"M_ListSetting"
	, "EDITBOX"
	, "StaticMortar, Mortar_01_base_F, CUP_B_M1129_MC_MK19_Desert, CUP_B_M1129_MC_MK19_Woodland"
	, {
		GVAR(M_List) = _this splitString ", ";
	}
] call _add;
// Mortars > Illumination radius
[
	"M_Range"
	, "SLIDER"
	, [100,1500,400,0]
	, true
] call _add;
// Mortars > Flare light intensity
[
	"M_Intensity"
	, "SLIDER"
	, [1,100,25,0]
	, true
] call _add;
// Mortars > Light intensity deviation
[
	"M_Deviation"
	, "SLIDER"
	, [0,100,10,0]
	, true
] call _add;


// Howitzers
// Howitzers > Enable/disable switch
[
	"H_Enabled"
	, "CHECKBOX"
	, true
] call _add;
// Howitzers > List of classnames
[
	"H_ListSetting"
	, "EDITBOX"
	, "StaticCannon, rhs_2s3tank_base"
	, {
		GVAR(H_List) = _this splitString ", ";
	}
] call _add;
// Howitzers > Illumination radius
[
	"H_Range"
	, "SLIDER"
	, [100,1500,400,0]
	, true
] call _add;
// Howitzers > Flare light intensity
[
	"H_Intensity"
	, "SLIDER"
	, [1,100,25,0]
	, true
] call _add;
// Howitzers > Light intensity deviation
[
	"H_Deviation"
	, "SLIDER"
	, [0,100,10,0]
	, true
] call _add;

/*
["dzn_flares_mortar_enabled", "CHECKBOX", "Enabled for Mortars", "tS Flares", true, true] call CBA_Settings_fnc_init;
["dzn_flares_mortar_intensity", "SLIDER", "[Mortar] Intensity", "tS Flares", [1, 100, 25, 0], true] call CBA_Settings_fnc_init;
["dzn_flares_mortar_range", "SLIDER", "[Mortar] Range (m)", "tS Flares", [100, 1500, 400, 0], true] call CBA_Settings_fnc_init;
["dzn_flares_mortar_intensityDeviation", "SLIDER", "[Mortar] Intensity deviation %", "tS Flares", [0, 100, 10, 0], true] call CBA_Settings_fnc_init;

["dzn_flares_howitzer_enabled", "CHECKBOX", "Enabled for Howitzers", "tS Flares", true, true] call CBA_Settings_fnc_init;
["dzn_flares_howitzer_intensity", "SLIDER", "[Howitzer] Intensity", "tS Flares", [1, 100, 25, 0], true] call CBA_Settings_fnc_init;
["dzn_flares_howitzer_range", "SLIDER"	, "[Howitzer] Range (m)", "tS Flares", [100, 1500, 600, 0], true] call CBA_Settings_fnc_init;
["dzn_flares_howitzer_intensityDeviation", "SLIDER", "[Howitzer] Intensity deviation %", "tS Flares", [0, 100, 10, 0], true] call CBA_Settings_fnc_init;

["dzn_flares_debug", "CHECKBOX", "[DEBUG] Enabled", "tS Flares", false, false] call CBA_Settings_fnc_init;
*/