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

_a = 3;
_b = 0.5;
if (isNil awg_cam_cameraPosCoef) then{
	awg_cam_cameraPosCoef = 0.8;
};
[0, 0, (1/_a)*((awg_cam_cameraPosCoef^3/3)+_b)]