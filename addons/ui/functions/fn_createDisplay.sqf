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


disableSerialization;
uiNamespace setVariable ["awg_ui_display", findDisplay 46 createDisplay "AWG_UIDisplay"];
//(uiNamespace getVariable "awg_ui_display") ctrlAddEventHandler["onMouseZChanged", "_this call awg_ui_events_wheelChanged"];

/* 

// Deploy Unit Button (Left Top Corner)
//[] call awg_cam_fnc_createCamera;
[] spawn {
_button = (uiNamespace getVariable "awg_ui_display") ctrlCreate ["RscButtonAWG_UI",100];
_button ctrlSetBackgroundColor UI_BACKGROUND_GREEN;
// place Left Corner
_button ctrlSetPosition [SCREEN_RIGHT_BORDER_X,SCREEN_TOP_BORDER_Yda,0.18,0.08];
_button ctrlSetText "106";
_button ctrlCommit 0;
};

// Left Corner
[] spawn {
// HQ Button
_hq_button = (uiNamespace getVariable "awg_ui_display") ctrlCreate ["RscButtonAWG_UI",100];
_hq_button ctrlSetBackgroundColor UI_BACKGROUND_GREEN; 
_hq_button ctrlSetPosition [SCREEN_RIGHT_BORDER_X,SCREEN_BOTTOM_BORDER_Y,0.15,0.08]; 
_hq_button ctrlSetText "HQ"; 
_hq_button ctrlCommit 0;

// Chat Button
_chat_button = (uiNamespace getVariable "awg_ui_display") ctrlCreate ["RscButtonAWG_UI",101]; 
_chat_button ctrlSetBackgroundColor UI_BACKGROUND_GREEN; 
_chat_button ctrlSetPosition [-0.53, 1.3,0.15,0.08]; 
_chat_button ctrlSetText "Chat"; 
_chat_button ctrlCommit 0;

// AirSupport
_airsup_button = (uiNamespace getVariable "awg_ui_display") ctrlCreate ["RscButtonAWG_UI",101]; 
_airsup_button ctrlSetBackgroundColor UI_BACKGROUND_GREEN; 
_airsup_button ctrlSetPosition [-0.36, 1.3,0.15,0.08];
_airsup_button ctrlSetText "AirSupport"; 
_airsup_button ctrlCommit 0;
};

*/