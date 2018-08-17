class CfgPatches
{
	class dzn_Artillery_Illumination
	{
		units[] = {
			"dzn_Module_AI_MortarFlare"
			,"dzn_Module_AI_MortarFlare_Triple"
			,"dzn_Module_AI_HowitzerFlare"			
		};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"CBA_MAIN"};
		author[] = {"10Dozen"};
	};
};

class Extended_PreInit_EventHandlers
{
	class dzn_Artillery_Illumination_PreInit
	{
		init = "call ('\dzn_Artillery_Illumination\Init.sqf' call SLX_XEH_COMPILE)";
	};
};

class CfgVehicles
{
	class ModuleFlareWhite_F;
	
	class dzn_Module_AI_MortarFlare: ModuleFlareWhite_F
	{
		author = "10Dozen";
		displayName = $STR_Flares_M_Module;
		function = "dzn_Flares_fnc_module_mortarSingle";
	};
	class dzn_Module_AI_MortarFlare_Triple: ModuleFlareWhite_F
	{
		author = "10Dozen";
		displayName = $STR_Flares_M_Module_Triple;
		function = "dzn_Flares_fnc_module_mortarTriple";
	};
	class dzn_Module_AI_HowitzerFlare: ModuleFlareWhite_F
	{
		author = "10Dozen";
		displayName = $STR_Flares_H_Module;
		function = "dzn_Flares_fnc_module_howitzerSingle";
	};	
};
