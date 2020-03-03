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
 * [player] call awg_cam_fnc_createCam;
 *
 * Public: No
 */

awg_cam_fnc_createCam = 
{ 
  private ['_unit']; 
  _unit = _this select 0; 
  _camPos = position player; 
  awg_cam_cam = "camcurator" camCreate _camPos; 
  awg_cam_cam setPosASL _camPos;
  awg_cam_cam setDir (getDir _unit); 
 
  awg_cam_cam cameraEffect ["INTERNAL", "BACK"]; 
  showCinemaBorder false; 
  cameraEffectEnableHUD true; 
  awg_cam_cam camSetFov 0.8; 
  awg_cam_cam camCommit 0; 
};
[player] call awg_cam_fnc_createCam;
