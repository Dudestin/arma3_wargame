#include "script_component.hpp"
/*
 * Author: Dudestin
 * follow group(or unit) as camera. call when focused group(or unit) moved.
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

params ["_group"]

_groupPos = [_group] call awg_cam_fnc_getGroupPosition;
awg_cam_cam setPos (_groupPos vectorAdd [] call getCameraPosOffset);
awg_cam_cam setDir (getDir _group);