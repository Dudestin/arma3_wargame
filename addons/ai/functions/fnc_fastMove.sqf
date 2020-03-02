/*
 * Author: Dudestin
 * fastMovement function used to fast movement AI (during ignore the enemy)
 *
 * Arguments:
 * 0: Arrival point <POSITION>
 * 1: Group ID or group <STRING><GROUP>
 *
 * Return Value:
 * The return value <BOOL>
 *
 * Example:
 * ["something", player] call fnc_fastMovement
 *
 * Public: [Yes/No]
 */

if (!params [["_arrPoint", "", [[0,0,0]]], ["_group", "", [grpNull, ""]]]) exitWith {
	hint "fnc_fastMovement Bad Params"
};

if (_group isEqualType grpNull) then {_group = groupId _group};

// _group setBehaviour "CARELESS";
[_group, 1] setWaypointBehaviour "CARELESS";
[_group, 1] setWaypointCombatMode "BLUE";
[_group, 1] setWaypointSpeed "FULL";
[_group, 1] setWaypointType "MOVE";