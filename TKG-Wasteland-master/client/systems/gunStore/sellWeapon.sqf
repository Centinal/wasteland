//	@file Version: 1.0
//	@file Name: sellWeapon.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:13
//	@file Args:

#include "dialog\gunstoreDefines.sqf";
disableSerialization;

//Initialize Values
private["_primary","_magazine","_weapon_value","_magSell"];
_magSell = 0;
_weapon_value = 0;
_primary = "";
_primary = currentWeapon player;

// Grab access to the controls
_dialog = findDisplay gunshop_DIALOG;
_playerMoneyText_sell = _dialog displayCtrl gunshop_money;

if(_primary == "") exitWith {hint "You don't have a current weapon in your hand to sell!";};

{
	if(_x in magazines player) then
    {
		_magazine = _x;
    };
} foreach (getArray (configFile >> "Cfgweapons" >> _primary >> "magazines"));

// Loop Gun store weapon list for sell price
{
	if(_x select 1 == _primary) then {
		_weapon_value = _x select 3;
	};
}forEach weaponsArray;

// Loop starting weapon for gun store value
{
	if(_x select 1 == _primary) then {
		_weapon_value = 25;
	};
}foreach startWeaponArray;


if(isNil{_weapon_value}) exitWith {
	hint "The vendor does not want that item.";
};

if(_weapon_value == 0) then {
	hint "This weapon is not in the store list. Default value given.";
	_weapon_value = 100;
};

player removeWeapon _primary;
player removeMagazines _magazine;

player setVariable ["cmoney", (player getVariable ["cmoney", 0]) + _weapon_value, true];
_playerMoneyText_sell CtrlsetText format["Cash: $%1", player getVariable "cmoney"];
hint format["You sold your gun for $%1", _weapon_value];