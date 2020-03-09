#include "script_component.hpp"
/*
 * Author: Dudestin
 * get camera position offset
 *
 * Arguments:
 * Nothing
 *
 * Access Value:
 * awg_cam_cameraPosCoef <Number>
 *
 * Return Value:
 * Position <Vector>
 *
 * Example:
 * _camPosOffset = ;
 *
 * Public: No
 */
#define CAMERA_POS_OFFSET_FUNC_PARAM_A 3
#define CAMERA_POS_OFFSET_FUNC_PRRAM_B 0.5

private _temp_camPosCoef = missionNamespace getVariable "posCoef";

if (isNil "_temp_camPosCoef") then
{
	missionNamespace setVariable ["posCoef", 3]; 
};

[0,0,(1/CAMERA_POS_OFFSET_FUNC_PARAM_A)*((missionNamespace getVariable "posCoef")^3/3)+CAMERA_POS_OFFSET_FUNC_PARAM_B];