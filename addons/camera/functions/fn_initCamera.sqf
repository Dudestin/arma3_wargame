#include "script_component.hpp"
/*
 * Author: Dudestin
 * Create Curator-like('Zeus-like') camera.
 *
 * Arguments:
 * 0: camera owner unit <OBJECT>
 *
 * Return Value:
 * The created camera <OBJECT>
 *
 * Example:
 * [player] call awg_cam_fnc_initCamera;
 *
 * Public: No
 */

params ['_unit'];
_camPos = position _unit;
awg_cam_cam = "camera" camCreate _camPos;
awg_cam_cam setPosASL _camPos;
awg_cam_cam setDir (getDir _unit); 

awg_cam_cam cameraEffect ["INTERNAL", "BACK"]; 
showCinemaBorder false; 
cameraEffectEnableHUD true; 
awg_cam_cam camSetFov 0.8; 
awg_cam_cam camCommit 0;