#include "script_component.hpp"

class CfgPatches {
    class awg_ui {
        name = "awg_ui";
        units[] = {};
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {"a3_ui_f"};
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