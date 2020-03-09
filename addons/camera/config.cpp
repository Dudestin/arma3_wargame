#include "script_component.hpp"

class CfgPatches {
  class awg_cam {
    name = "awg_cam";
    units[] = {};
    weapons[] = {};
    requiredVersion = 0.1;
    requiredAddons[] = {};
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
      class createCamera{};
      class followCamera{};
      class getCameraPosOffset{};
      class getGroupPosition{};
		};
	};
};

#include "CfgCamera.hpp"