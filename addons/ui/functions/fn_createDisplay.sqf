#include "script_component.hpp"
/* 
 * Author: Dudestin 
 * Create Display to indicate hud
 * 
 * Arguments: 
 * Nothing
 * 
 * Access Value:
 * uiNamespace/awg_ui_display <Object(Display)>
 *
 * Return Value: 
 * Nothing
 *
 * Example: 
 * [] call awg_ui_createDisplay;
 * 
 * Public: No 
 */

[player] call awg_cam_fnc_createCamera;

disableSerialization;
uiNamespace setVariable ["awg_ui_display", findDisplay 46 createDisplay "AWG_UIDisplay"];
(uiNamespace getVariable "awg_ui_display") displayAddEventHandler ["MouseZChanged", {
	params ["", "_scroll"];
	[_scroll] call awg_cam_fnc_changeCameraPosCoef;
	[player] call awg_cam_fnc_followCamera;
}];