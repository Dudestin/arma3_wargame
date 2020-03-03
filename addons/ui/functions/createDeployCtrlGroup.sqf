/* 
 * Author: Dudestin 
 * Create Deploy on display. 
 * 
 * Arguments: 
 * Nothing
 * 
 * Return Value: 
 * Nothing,but edit value uiNamespace/awg_ui_deploy_ctrlgroup
 * 
 * Example: 
 * [] spawn awg_ui_createDeployCtrlGroup;
 * 
 * Public: No 
 */

awg_ui_createDeployCtrlGroup =
{
  disableSerialization;

  uiNamespace setVariable ["awg_ui_deploy_ctrlgroup",findDisplay 46 createDisplay "RscDisplayEmpty"];

  _button = (uiNamespace getVariable "awg_ui_deploy_ctrlgroup") ctrlCreate ["RscButtonMenu",100];
  _button ctrlSetBackgroundColor [0.1, 0.4, 0.1, 0.68];
  // place Left Corner
  _button ctrlSetPosition [-0.7,-0.4,0.18,0.08];
  _button ctrlSetText "106";
  _button ctrlCommit 0;
};

