#include "macro.hpp"

private _add = {
	params ["_var","_type","_val",["_exp", "No Expression"],["_subcat", ""]];	
	
	private _arr = [
		format["dzn_Flares_%1",_var]
		,_type
		, [localize format["STR_Flares_%1",_var], localize format ["STR_Flares_%1_desc",_var]]
		, if (_subcat == "") then {
			"dzn Artillery Illumination"
		} else {
			["dzn Artillery Illumination", _subcat]
		}
		,_val
		,true
	];
	
	if !(typename _exp == "STRING" && { _exp == "No Expression" }) then { _arr pushBack _exp; };
	_arr call CBA_Settings_fnc_init;
};

#define	M_CAT	localize "STR_Flares_M"
#define	H_CAT	localize "STR_Flares_H"
#define	M_ECAT	"No Expression", M_CAT
#define	H_ECAT	"No Expression", H_CAT

// Mortars
// Mortars > Enable/disable switch
[
	"M_Enabled"
	, "CHECKBOX"
	, true
	, M_ECAT
] call _add;
// Mortars > List of classnames
[
	"M_ListSetting"
	, "EDITBOX"
	, "StaticMortar, Mortar_01_base_F, CUP_B_M1129_MC_MK19_Desert, CUP_B_M1129_MC_MK19_Woodland"
	, {
		GVAR(M_List) = _this splitString ", ";
		publicVariable SVAR(M_List);
	}
	, M_CAT
] call _add;


// Mortars > Illumination radius
[
	"M_Range"
	, "SLIDER"
	, [100,1500,400,0]
	, M_ECAT
] call _add;
// Mortars > Flare light intensity
[
	"M_Intensity"
	, "SLIDER"
	, [1,25,10,0]
	, M_ECAT
] call _add;
// Mortars > Light intensity deviation
[
	"M_Deviation"
	, "SLIDER"
	, [0,100,25,0]
	, M_ECAT
] call _add;
// Mortars > Light Color deviation
[
	"M_Color"
	, "COLOR"
	, [1,1,0.5]
	, M_ECAT
] call _add;


// Howitzers
// Howitzers > Enable/disable switch
[
	"H_Enabled"
	, "CHECKBOX"
	, true
	, H_ECAT
] call _add;
// Howitzers > List of classnames
[
	"H_ListSetting"
	, "EDITBOX"
	, "StaticCannon, rhs_2s3tank_base"
	, {
		GVAR(H_List) = _this splitString ", ";
		publicVariable SVAR(H_List);
	}
	, H_CAT
] call _add;
// Howitzers > Illumination radius
[
	"H_Range"
	, "SLIDER"
	, [100,1500,450,0]
	, H_ECAT
] call _add;
// Howitzers > Flare light intensity
[
	"H_Intensity"
	, "SLIDER"
	, [1,25,10,0]
	, H_ECAT
] call _add;
// Howitzers > Light intensity deviation
[
	"H_Deviation"
	, "SLIDER"
	, [0,100,25,0]
	, H_ECAT
] call _add;
// Howitzers > Light Color deviation
[
	"H_Color"
	, "COLOR"
	, [1,1,0.5]
	, H_ECAT
] call _add;