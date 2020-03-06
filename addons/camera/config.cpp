#include "script_component.hpp"

class CfgPatches {
  class awg_camera {
    name = "awg_camera";
    units[] = {};
    weapons[] = {};
    requiredVersion = 0.1;
    requiredAddons[] = {};
    authors[] = {"Dudestin"};
  };
};

class CfgFunctions
{
	class awg_camera
	{
		class myCategory
		{
			file = "j\awg\addons\camera\functions";
			class changeCameraPosCoef{};
      class createCamera{};
      class followCamera{};
      class getCameraPosOffset{};
      class getGroupPosition{};
		};
	};
};