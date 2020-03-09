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
ZOOM_UP = 1;
ZOOM_DOWN = 0;
ZOOM_UNDER_LIMIT = 0;
ZOOM_UPPER_LIMIT = 100.0;
ZOOM_CHANGE_VALUE = 0.2;
ZOOM_DEFAULT_VALUE = 3.0;

params["_direction"];

private _temp_camPosCoef = missionNamespace getVariable "posCoef";

if (isNil "_temp_camPosCoef") then
{
	missionNamespace setVariable ["posCoef", 3];
};

if (_direction == ZOOM_UP) then{
	if (_temp_camPosCoef - ZOOM_CHANGE_VALUE >= ZOOM_UNDER_LIMIT) then{
		_temp_camPosCoef = _temp_camPosCoef - ZOOM_CHANGE_VALUE;
	};
} else {
	if (_temp_camPosCoef + ZOOM_CHANGE_VALUE <= ZOOM_UPPER_LIMIT) then{	
		_temp_camPosCoef = _temp_camPosCoef + ZOOM_CHANGE_VALUE;
	};
};

player setVariable ["posCoef", _temp_camPosCoef];