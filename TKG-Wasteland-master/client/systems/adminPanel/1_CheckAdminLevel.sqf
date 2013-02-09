//	@file Version: 1.0
//	@file Name: checkAdmin.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

// /////Levels/////
// TKG Member
// Donator
// Moderator
// Administrator
// Server Tech
// Global Staff

private ["_uid"];
_uid = getPlayerUID player;

if ((_uid in Moderator)) then {
	execVM "client\systems\adminPanel\ranks\loadModeratorMenu.sqf";
	hint "Welcome Moderator";		
};
if ((_uid in Administrator)) then {
	[] execVM "client\systems\adminPanel\ranks\loadAdministratorMenu.sqf";
	hint "Welcome Admin";		
};
if ((_uid in Technician)) then {
	execVM "client\systems\adminPanel\ranks\loadserverTechnicianMenu.sqf";
	hint "Welcome Tech";		
};
if ((_uid in GlobalStaff)) then {
	execVM "client\systems\adminPanel\ranks\loadServerAdministratorMenu.sqf";
	hint "Welcome Owner";		
};
