//	@file Version: 1.0
//	@file Name: playerHud.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 11/09/2012 04:23
//	@file Args:

disableSerialization;
private["_ui","_hud","_food","_water","_healthICON","_foodICON","_waterICON"];

_healthICON = 100;
_foodICON = 100;
_waterICON = 100;

while {true} do
{
    1000 cutRsc ["WastelandHud","PLAIN"];
    _ui = uiNameSpace getVariable "WastelandHud";
    _vitals = _ui displayCtrl 3600;
    _hudVehicle = _ui displayCtrl 3601;
    
    //Calculate Health 0 - 100
    _decimalPlaces = 2;
    _health = damage player;
    _health = round (_health * (10 ^ _decimalPlaces)) / (10 ^ _decimalPlaces);
    _health = 100 - (_health * 100);
    
	if(_health <= 0) then {
		_healthICON = 0;
	} else {
		if(_health <= 10) then {
			_healthICON = 10;
		} else {
		if(_health <= 20) then {
				_healthICON = 20;
			} else {
				if(_health <= 30) then {
					_healthICON = 30;
				} else {
					if(_health <= 40) then {
						_healthICON = 40;
					} else {
						if(_health <= 50) then {
							_healthICON = 50;
						} else {
							if(_health <= 60) then {
								_healthICON = 60;
							} else {
								if(_health <= 70) then {
									_healthICON = 70;
								} else {
									if(_health <= 80) then {
										_healthICON = 80;
									} else {
										if(_health <= 90) then {
											_healthICON = 90;
										} else {
											if(_health <= 100) then {
												_healthICON = 100;
											} else {
												_healthICON = 0;
											};
										};
									};
								};
							};
						};
					};
				};
			};
		};
	};
	
	if(hungerLevel <= 0) then {
		_foodICON = 0;
	} else {
		if(hungerLevel <= 10) then {
			_foodICON = 10;
		} else {
		if(hungerLevel <= 20) then {
				_foodICON = 20;
			} else {
				if(hungerLevel <= 30) then {
					_foodICON = 30;
				} else {
					if(hungerLevel <= 40) then {
						_foodICON = 40;
					} else {
						if(hungerLevel <= 50) then {
							_foodICON = 50;
						} else {
							if(hungerLevel <= 60) then {
								_foodICON = 60;
							} else {
								if(hungerLevel <= 70) then {
									_foodICON = 70;
								} else {
									if(hungerLevel <= 80) then {
										_foodICON = 80;
									} else {
										if(hungerLevel <= 90) then {
											_foodICON = 90;
										} else {
											if(hungerLevel <= 100) then {
												_foodICON = 100;
											} else {
												_foodICON = 0;
											};
										};
									};
								};
							};
						};
					};
				};
			};
		};
	};
	
	if(thirstLevel <= 0) then {
		_waterICON = 0;
	} else {
		if(thirstLevel <= 10) then {
			_waterICON = 10;
		} else {
		if(thirstLevel <= 20) then {
				_waterICON = 20;
			} else {
				if(thirstLevel <= 30) then {
					_waterICON = 30;
				} else {
					if(thirstLevel <= 40) then {
						_waterICON = 40;
					} else {
						if(thirstLevel <= 50) then {
							_waterICON = 50;
						} else {
							if(thirstLevel <= 60) then {
								_waterICON = 60;
							} else {
								if(thirstLevel <= 70) then {
									_waterICON = 70;
								} else {
									if(thirstLevel <= 80) then {
										_waterICON = 80;
									} else {
										if(thirstLevel <= 90) then {
											_waterICON = 90;
										} else {
											if(thirstLevel <= 100) then {
												_waterICON = 100;
											} else {
												_waterICON = 0;
											};
										};
									};
								};
							};
						};
					};
				};
			};
		};
	};
	
	_vitals ctrlSetStructuredText parseText format ["
	<img size='2.5' image='client\icons\blood\hp_%1.paa'/><br/><br/>
	<img size='2.5' image='client\icons\food\fd_%2.paa'/><br/><br/>
	<img size='2.5' image='client\icons\water\trs_%3.paa'/><br/><br/>
	", _healthICON, _foodICON, _waterICON];
	
    _vitals ctrlCommit 0;
     
/*
    if(player != vehicle player) then
    {
        _tempString = "";
        _yOffset = 0.24;
        _vehicle = assignedVehicle player;

        {
            if((driver _vehicle == _x) || (gunner _vehicle == _x)) then
            {
                if(driver _vehicle == _x) then
                {
                    _tempString = format ["%1 %2 <img size='0.8' image='client\icons\driver.paa'/><br/>",_tempString, (name _x)];
                    _yOffset = _yOffset + 0.04;
                }
                else
                {
                    _tempString = format ["%1 %2 <img size='0.8' image='client\icons\gunner.paa'/><br/>",_tempString, (name _x)];
                    _yOffset = _yOffset + 0.04;
                }; 
            }
            else
            {
                _tempString = format ["%1 %2 <img size='0.8' image='client\icons\cargo.paa'/><br/>",_tempString, (name _x)];
                _yOffset = _yOffset + 0.04;
            };    
        } forEach crew _vehicle;

        _hudVehicle ctrlSetStructuredText parseText _tempString;
        _x = safeZoneX + (safeZoneW * (1 - (0.42 / SafeZoneW)));
        _y = safeZoneY + (safeZoneH * (1 - (_yOffset / SafeZoneH)));
        _hudVehicle ctrlSetPosition [_x, _y, 0.4, 0.65];
        _hudVehicle ctrlCommit 0;
    };
*/
    sleep 1;
};