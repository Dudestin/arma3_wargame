#include "script_component.hpp"
/* 
 * Author: Dudestin 
 * Create Display to indicate hud
 * 
 * Arguments: 
 * Nothing
 * 
 * Return Value: 
 * Nothing
 *
 * Example: 
 * [] call awg_ui_createDisplay;
 * 
 * Public: No 
 */

awg_ui_createDisplay =
{
  disableSerialization;
  uiNamespace setVariable ["awg_ui_display", findDisplay 46 createDisplay "RscDisplayEmpty"];
  [] call awg_ui_createDeployGroup;
  [] call awg_ui_createGamePanelGroup;
};

awg_ui_createDeployGroup =
{
  _button = (uiNamespace getVariable "awg_ui_display") ctrlCreate ["RscButtonMenu",100];
  _button ctrlSetBackgroundColor UI_BACKGROUND_GREEN;
  // place Left Corner
  _button ctrlSetPosition [-0.7,-0.4,0.18,0.08];
  _button ctrlSetText "106";
  _button ctrlCommit 0;
};

awg_ui_createGamePanelGroup =
{
  // HQ Button
  _hq_button = (uiNamespace getVariable "awg_ui_display") ctrlCreate ["RscButtonMenu",100];
  _hq_button ctrlSetBackgroundColor UI_BACKGROUND_GREEN; 
  _hq_button ctrlSetPosition [-0.7,1.3,0.15,0.08]; 
  _hq_button ctrlSetText "HQ"; 
  _hq_button ctrlCommit 0;

  // Chat Button
  _chat_button = (uiNamespace getVariable "awg_ui_display") ctrlCreate ["RscButtonMenu",101]; 
  _chat_button ctrlSetBackgroundColor UI_BACKGROUND_GREEN; 
  _chat_button ctrlSetPosition [-0.53, 1.3,0.15,0.08]; 
  _chat_button ctrlSetText "Chat"; 
  _chat_button ctrlCommit 0;

  // AirSupport
  _airsup_button = (uiNamespace getVariable "awg_ui_display") ctrlCreate ["RscButtonMenu",101]; 
  _airsup_button ctrlSetBackgroundColor UI_BACKGROUND_GREEN; 
  _airsup_button ctrlSetPosition [-0.36, 1.3,0.15,0.08];
  _airsup_button ctrlSetText "AirSupport"; 
  _airsup_button ctrlCommit 0;
};

