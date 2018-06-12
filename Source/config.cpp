class CfgPatches
{
	class dzn_Artillery_Illumination
	{
		units[] = {};
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