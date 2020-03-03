/* 
 * Author: Dudestin 
 * Create Deploy Dialog on display. 
 * 
 * Arguments: 
 * Nothing
 * 
 * Return Value: 
 * Nothing
 * 
 * Example: 
 * [] spawn awg_ui_createDeployDisp;
 * 
 * Public: No 
 */

awg_ui_createDeployDisp =
{
  disableSerialization;

  _display = findDisplay 46 createDisplay "RscDisplayEmpty";
  _button = _display ctrlCreate ["RscButtonMenu",100];
  _button ctrlSetBackgroundColor [0.1, 0.4, 0.1, 0.68];
  // place Left Corner
  _button ctrlSetPosition [-0.7,-0.4,0.18,0.08];
  _button ctrlSetText "106";
  _button ctrlCommit 0;
};

