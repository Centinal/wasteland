#define serverTechMenu_dialog 50008
#define serverTechMenu_option 50009

class ServerTechMenu
{
	idd = serverTechMenu_dialog;
	movingEnable=1;
	onLoad = "uiNamespace setVariable ['ServerTechMenu', _this select 0]";

	class controlsBackground {

		class ServerTechMenu_Title:w_RscText
		{
			idc=-1;
			text="Menu";
			x=0.35;
			y=0.14;
			w=0.088;
			h=0.035;
		};

		class ServerTechMenu_background:w_RscBackground
		{
			idc=-1;
			x=0.28;
			y=0.10;
			w=0.42;
			h=0.74;
		};
	};

	class controls {

		class ServerTechMenu_options:w_Rsclist
		{
			idc = serverTechMenu_option;
			x=0.35;
			y=0.21;
			w=0.31;
			h=0.49;
		};

		class ServerTechMenu_activate:w_RscButton
		{
			idc=-1;
			text="Select";
			onButtonClick = "[4] execVM 'client\systems\adminPanel\2_OptionSelect.sqf'";
			x=0.40;
			y=0.74;
			w=0.22;
			h=0.071;
		};
	};
};