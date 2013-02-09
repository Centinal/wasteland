//	@file Version: 2.0
//	@file Name: createTownMarkers.sqf
//	@file Author: Zuen
//	@file Credit: [404] Deadbeat
//	@file Created: 19/01/2013 21:15
//	@file Args:

private["_side"];

_radius = 300;
_status = [];
_tempArray = [];
_col_empty = "ColorBlack";
_col_enemy = "ColorRed";
_col_friendly = "ColorGreen";
_col_mixed = "ColorOrange";

if(str(playerSide) == "GUER") then {_side = "Independent"};

{
	_pos = getMarkerPos (_x select 0);
	_TownName = _x select 2;

	// Circle zone   
    _markerName = format["marker%1",_forEachIndex];
    deleteMarkerLocal _markerName;
	_marker = createMarkerLocal [_markerName, _pos];
	_markerName setMarkerShapeLocal "ELLIPSE";
    _markerName setMarkerColorLocal _col_empty;
	_markerName setMarkerSizeLocal [_radius, _radius];
	_markerName setMarkerBrushLocal "SolidBorder";
	_markerName setMarkerAlphaLocal 0.5;
	
	_status set [count _status, "EMPTY"];
} forEach cityList;

//Used to set the status of each town.
_setStatus = {
	if(_status select (_this select 0) == (_this select 1)) exitWith {};

	_markerNameZone = format ["marker%1", _this select 0];
	
	switch(_this select 1) do {
		case "EMPTY": {
			_markerNameZone setmarkerColorLocal _col_empty;
		};
		case "ENEMY": {
//			_markerNameZone setmarkerColorLocal _col_enemy;
		};
		case "FRIENDLY": {
			_markerNameZone setmarkerColorLocal _col_friendly;
		};
		case "MIXED": {
			_markerNameZone setmarkerColorLocal _col_mixed;
		};
	};

	if((_this select 2) && ((_this select 1) in ["ENEMY", "MIXED"])) then {
		hintSilent parseText format ["<t size='2' color='#ff0000'>%1</t><br/><br/>%2.","Warning!","Enemy player just entered the town"];
	};

	_status set [_this select 0, _this select 1];
};

//Check each town to see if their state has changed and then calls the update function to make the display the correct state.
showmarkers = true;
while {showmarkers} do {
	
	if((count units group player > 1) AND (_side == "Independent")) then
    {
        _tempArray = [];
		
        {
        	_tempArray set [count _tempArray,getPlayerUID _x];    
        }forEach units player;
	};

    {
			_unit = getMarkerPos (_x select 0);
			
			_friendlyCount = 0;
			_enemyCount = 0;
			
			{
				if((_x distance _unit < _radius) && (player != _x)) then {
					if(getPlayerUID _x in _tempArray) then
					{
						_friendlyCount = _friendlyCount + 1;
					} else {
						if(playerSide in [west,east] && playerSide == side _x) then {
							_friendlyCount = _friendlyCount + 1;
						} else {
							_enemyCount = _enemyCount + 1;
						};
					};
				};
			} forEach playableUnits;

			if(player distance _unit < _radius) then {
				if(_enemyCount > 0) then {
					if(_friendlyCount > 0) then {
						[_forEachIndex, "MIXED", true] call _setStatus;
					} else {
						[_forEachIndex, "ENEMY", true] call _setStatus;
					};
				} else {
					[_forEachIndex, "FRIENDLY", true] call _setStatus;
				};
			} else {
				if(_enemyCount > 0) then {
					if(_friendlyCount > 0) then {
						[_forEachIndex, "MIXED", false] call _setStatus;
					} else {
						[_forEachIndex, "ENEMY", false] call _setStatus;
					};
				} else {
					if(_friendlyCount > 0) then {
						[_forEachIndex, "FRIENDLY", false] call _setStatus;
					} else {
						[_forEachIndex, "EMPTY", false] call _setStatus;
					};
				};
			};   

    }forEach cityList;
	
	sleep 2;
};
