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

_a = CAMERA_POS_OFFSET_FUNC_PARAM_A;
_b = CAMERA_POS_OFFSET_FUNC_PARAM_B;

[0,0,(1/_a)*((uiNamespace getVariable "awg_cam_cameraPosCoef")^3/3)+_b]