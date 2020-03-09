#include "script_component.hpp"

class CfgPatches {
    class awg_main {
        name = "awg_main";
        units[] = {};
        weapons[] = {};
		author = "Dudestin"
        requiredVersion = 0.1;
        requiredAddons[] = {};
    };
};

class CfgFunctions
{
	class awg_main
	{
		class myCategory
		{
			file = "j\awg\addons\main\functions";
			class test{};
		};
	};
};

#include CfgSettings.hpp