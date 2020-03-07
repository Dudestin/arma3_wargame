#include "\a3\ui_f\hpp\definedikcodes.inc"

#define SCREEN_RIGHT_BORDER_X (safeZoneW+safeZoneX)
#define SCREEN_LEFT_BORDER_X safeZoneX
#define SCREEN_BOTTOM_BORDER_Y (safeZoneH+safeZoneY)
#define SCREEN_TOP_BORDER_Y safeZoneY

// size
#define UI_BUTTON_SIZE_W 0.18
#define UI_BUTTON_SIZE_H 0.08

// Color
#define UI_BACKGROUND_GREEN {0.1,0.4,0.1,0.68}

// IDD & IDC
#define AWG_COMMAND_DISPLAY_IDD 46
#define AWG_COMMAND_DEPLOY_BUTTON 99
#define AWG_COMMAND_HQ_BUTTON 100
#define AWG_COMMAND_CHAT_BUTTON 101
#define AWG_COMMAND_CHAT_BUTTON 102

class RscButtonMenu;
class RscDisplayEmpty;

class RscButtonAWG_UI : RscButtonMenu{
	w = UI_BUTTON_SIZE_W; h = UI_BUTTON_SIZE_H;
	text = "(Set My Text)";
	movingEnable = 0;
	colorBackground[] = UI_BACKGROUND_GREEN;

	class TextPos
	{
		left="0.25 *(((safezoneW / safezoneH) min 1.2) / 40)";
		top="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right=0.0049999999;
		bottom=0;
	};
	
	class Attributes
	{
		font="PuristaLight";
		color="#E5E5E5";
		align="center";
		shadow="false";
	};
};

class AWG_UIDisplay : RscDisplayEmpty{
	idd = AWG_COMMAND_DISPLAY_IDD;
	
	class Controls {
		// Left Top
		// DeployPoint BUtton
		class DeoloyPointButton : RscButtonAWG_UI{
			idc = 99;
			x = SCREEN_LEFT_BORDER_X;
			y = SCREEN_TOP_BORDER_Y;
			text = "114514";
		};

		// Left Bottom
		// HQButton is equal to "Esc" Key 
		class HQButton : RscButtonAWG_UI{
			idc = 100;
			text = "HQ";
			x = SCREEN_LEFT_BORDER_X;
			y = SCREEN_BOTTOM_BORDER_Y - UI_BUTTON_SIZE_H;
		};
		// Chat Button display chat history ant chatting edit box
		class ChatButton : RscButtonAWG_UI{
			idc = 101;
			text = "Chat";
			x = SCREEN_LEFT_BORDER_X + UI_BUTTON_SIZE_W;
			y = SCREEN_BOTTOM_BORDER_Y - UI_BUTTON_SIZE_H;
		};
		// AirSupport Button Display current has aircraft on table
		class AirSupportButton : RscButtonAWG_UI{
			idc = 102;
			text  = "AirSupport";
			x = SCREEN_LEFT_BORDER_X + 2*UI_BUTTON_SIZE_W;
			y = SCREEN_BOTTOM_BORDER_Y - UI_BUTTON_SIZE_H;
		};
	};
};