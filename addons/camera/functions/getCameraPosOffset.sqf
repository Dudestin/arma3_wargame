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
 * _camPosOffset = [] call awg_cam_fnc_getCameraPosOffset;
 *
 * Public: No
 */

awg_cam_fnc_getCameraPosOffset ={
	[0, 0, (1/a)*((awg_cam_cameraPosCoef^3/3)+b)]
};