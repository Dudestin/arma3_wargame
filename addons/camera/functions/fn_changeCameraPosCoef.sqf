#include "script_component.hpp"
/*
 * Author: Dudestin
 * Change awg_cam_cameraPosCoef value.
 * Call from Mouse Wheel Event handler.
 *
 * Arguments:
 * ZOOM_UP or ZOOM_DOWN <Number>
 * 
 * Access Value:
 * awg_cam_cameraPosCoef <Number>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [ZOOM_UP] call awg_cam_fnc_changeCameraPosCoef;
 *
 * Public: No
 */

params["_direction"];

if (_direction == ZOOM_UP) then{
	if (awg_cam_cameraPosCoef-ZOOM_CHANGE_VALUE >= ZOOM_UNDER_LIMIT) then{
		awg_cam_cameraPosCoef = awg_cam_cameraPosCoef - ZOOM_CHANGE_VALUE;
	}
} else {
	if (awg_cam_cameraPosCoef+ZOOM_CHANGE_VALUE <= ZOOM_UPPER_LIMIT) then{	
		awg_cam_cameraPosCoef = awg_cam_cameraPosCoef - ZOOM_CHANGE_VALUE;
	}
}