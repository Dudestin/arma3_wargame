#include "\a3\ui_f\hpp\definedikcodes.inc"

awg_ui_keyDown =
{
  params ["_DisplayOrDialogOrControl", "_key", "_shiftState", "_ctrlState", "_altState"];
  params ["_key"];

  /* shortcut key as like as Wargame Series. */
  // move click point, if contact enemy on the way, eliminate them.
  if (_key == DIK_Q) then {    };

  // if be inside vehicle, keep look ahead and back.  
  if (_key == DIK_G) then {    };

  // move fast, use load, ignore enemy.
  if (_key == DIK_F) then {    };

  // Eject(Unload) from Vehicle
  if (_key == DIK_U) then {    };

  // Indicate information about unit(s),group,vehicle
  if (_key == DIK_I) them {    };

  // Force to fire at click point.
  if (_key == DIK_T) them {    };

  // Call Group Hot Key
  if (!_ctrlState && (_key >= DIK_2 && _key <= DIK_0)) then{

  };

  // Bind Group Hot Key
  if (_ctrlState && (_key >= DIK_2 && _key <= DIK_0)) then{

  };
};

awg_ui_mouseDown =
{
  params ["", "_button", "_sx", "_sy", "_shift", "_ctrl", "_alt"];

  if (_button == 0) then {
    awg_ui_mouseLeftDown = true;
  }
  if (_button == 1) then {
    awg_ui_mouseRightDown = true;
  }

  awg_ui_mouseClickPos = [_sx, _sy];
};