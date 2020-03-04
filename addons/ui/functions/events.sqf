#include "script_component.hpp"
#include "\a3\ui_f\hpp\definedikcodes.inc"
/* 
 * Author: Dudestin 
 * event handler for the ui component
 * 
 * Arguments: 
 * Nothing
 * 
 * Return Value: 
 * Nothing
 *
 * Example: 
 * (_display displayCtrl 1000) ctrlAddEventHandler["MouseButtonDown", "_this call awg_ui_events_mouseDown"];
 * 
 * Public: No 
 */

awg_ui_events_mouseDown =
{
  params = ["", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];
};

awg_ui_events_mouseUp =
{
  params = ["", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];
};

awg_ui_events_keyDown =
{

  params ["", "_key", "_shift", "_ctrl", "_alt"];
};

awg_ui_events_keyUp =
{
  params ["", "_key", "_shift", "_ctrl", "_alt"];
};
