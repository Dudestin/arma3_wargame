/* 
 * Author: Dudestin 
 * Create Deploy Dialog on display. 
 * TODO: create Original Button Resouce.
 *
 * Arguments: 
 * Nothing
 * 
 * Return Value: 
 * Nothing
 * 
 * Example: 
 * [] spawn awg_ui_createGamePanelDisp;
 * 
 * Public: No 
*/

awg_ui_createGamePanelDisp =
{
  disableSerialization; 
 
  _display = findDisplay 46 createDisplay "RscDisplayEmpty"; 

  // HQ Button
  _hq_button = _display ctrlCreate ["RscButtonMenu",100];
  _hq_button ctrlSetBackgroundColor [0.1, 0.4, 0.1, 0.68]; 
  _hq_button ctrlSetPosition [-0.7,1.3,0.15,0.08]; 
  _hq_button ctrlSetText "HQ"; 
  _hq_button ctrlCommit 0;

  // Chat Button
  _chat_button = _display ctrlCreate ["RscButtonMenu",101]; 
  _chat_button ctrlSetBackgroundColor [0.1, 0.4, 0.1, 0.68]; 
  _chat_button ctrlSetPosition [-0.53, 1.3,0.15,0.08]; 
  _chat_button ctrlSetText "Chat"; 
  _chat_button ctrlCommit 0;

  // AirSupport
  _airsup_button = _display ctrlCreate ["RscButtonMenu",101]; 
  _airsup_button ctrlSetBackgroundColor [0.1, 0.4, 0.1, 0.68]; 
  _airsup_button ctrlSetPosition [-0.36, 1.3,0.15,0.08];
  _airsup_button ctrlSetText "AirSupport"; 
  _airsup_button ctrlCommit 0;
};


