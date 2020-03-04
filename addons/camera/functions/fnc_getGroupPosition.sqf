#include "script_component.hpp"
/*
 * Author: Dudestin
 * get Group(or Unit) Leader location
 *
 * Arguments:
 * 0: Group or Unit <Group>|<Object>
 *
 * Return Value:
 * Position <VECTOR>
 *
 * Example:
 * [group player] call awg_cam_fnc_getGroupPosition;
 *
 * Public: No
 */

private ['group'];
_groupPos = position (leader group)

_groupPos