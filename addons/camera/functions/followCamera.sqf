#include "script_component.hpp"
/*
 * Author: Dudestin
 * follow group(or unit) as camera. call Each Frame to Focus.
 *
 * Arguments:
 * Nothing
 *
 * Access Value:
 * awg_cam_focusGroup <Group(or Unit)>
 * awg_cam_cam <Object(Camera)>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call awg_cam_fnc_focusCamera;
 *
 * Public: No
 */

awg_cam_fnc_focusCamera = {
	_groupPos = [group] call awg_cam_fnc_getGroupPosition;
	awg_cam_cam setPos (_groupPos + awg_cam_camPosOffset);
	awg_cam_cam setDir (getDir group);
};