#include "script_component.hpp"

class CfgPatches {
  class ADDON {
    name = COMPONENT_NAME;
    units[] = {};
    weapons[] = {};
    requiredVersion = REQUIRED_VERSION;
    requiredAddons[] = {"cba_main", QUOTE(DOUBLES(PREFIX, main))};
    authors[] = {"Dudestin"};
  };
};

class CfgFunctions
{
	class awg_cam
	{
		class myCategory
		{
			file = "j\awg\addons\cam\functions";
			class changeCameraPosCoef{};
      class initCamera{};
      class followCamera{};
      class getCameraPosOffset{};
      class getGroupPosition{};
		};
	};
};

#include "CfgCamera.hpp"