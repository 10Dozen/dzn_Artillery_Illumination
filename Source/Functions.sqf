#include "macro.hpp"
#define PATH                    "\dzn_Artillery_Illumination\functions\"
#define COMPILE_FUNCTION(X)     GVAR(X) = compile preprocessFileLineNumbers format ["%1%2.sqf", PATH, #X]

COMPILE_FUNCTION(fnc_handleFlare);
COMPILE_FUNCTION(fnc_setFlareEffect);
COMPILE_FUNCTION(fnc_setEHGlobal);
COMPILE_FUNCTION(fnc_publish);

COMPILE_FUNCTION(fnc_module_spawnShell);
COMPILE_FUNCTION(fnc_module_mortarSingle);
COMPILE_FUNCTION(fnc_module_mortarTriple);
COMPILE_FUNCTION(fnc_module_howitzerSingle);