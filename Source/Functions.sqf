#include "macro.hpp"
#define PATH                    "functions\"
#define COMPILE_FUNCTION(X)     GVAR(X) = compile preprocessFileLineNumbers format ["%1%2.sqf", PATH, #X]

// COMPILE_FUNCTION(fnc_setFlareEffectGlobal);
COMPILE_FUNCTION(fnc_handleFlare);
COMPILE_FUNCTION(fnc_setFlareEffect);
COMPILE_FUNCTION(fnc_setEHGlobal);
COMPILE_FUNCTION(fnc_publish);
