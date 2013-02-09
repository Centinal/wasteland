//	@file Version: 1.0
//	@file Name: onHit.sqf
//	@file Author: Zuen
//	@file Created: 07/01/2013 14:30
//	@file Args:

_radiusH = 200;																	//The radius from the Gun Stores
_gunStoresH = ["gs1", "gs2", "gs3", "gs4"];										//The Gun Stores Array

{
	_unitH = missionNamespace getVariable (_gunStoresH select _forEachIndex);	//Getting the values of each Gun Store from the mission.sqm file
	
	if(player distance _unitH <= _radiusH) then {								//If the player is in the Gun Store radius
	
		player setDamage 0;
		hint format["Gun Store is a no-kill zone"];
	
	};
} forEach _gunStoresH;