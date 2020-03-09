#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cba_main", QUOTE(DOUBLES(PREFIX, "main"))};
        authors[] = {"Dudestin"};
    };
};

class CfgFunctions
{
	class awg_ui
	{
		class myCategory
		{
			file = "j\awg\addons\ui\functions";
			class createDisplay{};
            class events{};
		};
	};
};

#include "CfgUI.hpp"