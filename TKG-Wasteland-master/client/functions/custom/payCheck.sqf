//	@file Version: 1.0
//	@file Name: PayCheck.sqf
//	@file Author: Zuen
//	@file Created: 22/01/2013 04:05
//	@file Description: Receive a paycheck every few minutes.
//	@file Args:

_addMoney = 50;

while {true} do
{
	sleep 600; //600 for 10min
	
	_playerMoney = player getVariable "cmoney";
	
	player setVariable["cmoney",_playerMoney + _addMoney,false];
	
	hint format["%1 money has been added to your account. You now have %2.", _addMoney, (player getVariable "cmoney")];
};