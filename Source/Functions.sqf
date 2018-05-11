#define PATH                    "functions\"
#define COMPILE_FUNCTION(X)     dzn_Flares_#X = compile preprocessFileLineNumbers format ["%1%2.sqf", PATH, #X]

COMPILE_FUNCTION(fnc_setFlareEffectGlobal);
COMPILE_FUNCTION(fnc_setFlareEffect);
COMPILE_FUNCTION(fnc_setEHGlobal);
COMPILE_FUNCTION(fnc_publish);
