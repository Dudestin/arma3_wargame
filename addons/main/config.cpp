#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {"cba_main"};
		author = "Dudestin";
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