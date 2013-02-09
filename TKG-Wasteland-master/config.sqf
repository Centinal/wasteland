//	@file Version: 1.0
//	@file Name: config.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:13
//	@file Description: Main config.

// --------------------------------------------------------------------------------------------------- \\
// ----------  !DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU KNOW WHAT YOU ARE DOING!	---------- \\
// ----------																				---------- \\
// ----------			404Games are not responsible for anything that may happen 			---------- \\
// ----------			 as a result of unauthorised modifications to this file.			---------- \\
// --------------------------------------------------------------------------------------------------- \\

                                                                                                
//Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost, sell amount
weaponsArray = [
		["PDW","UZI_SD_EP1",50,25],
		["Sa vz.61","Sa61_EP1",50,35],
		["Makarov SD","MakarovSD",50,35],
		
    ["M16A4","M16A4",75,35],
    ["M4A1","M4A1",50,25],
    ["M4A1 CCO","M4A1_Aim",100,55],
    ["Saiga 12K","Saiga12K",100,75],
		["M14 AIM","M14_EP1",100,75],
	["Mk12 SPR","M4SPR",200,150],
    ["M249","M249_EP1",250,188],
    ["Mk_48 Mod","Mk_48",250,188],
    ["M240","M240",250,188],
    ["Pecheneg","Pecheneg",250,188],
		["SVD Desert","SVD_des_EP1",250,188],
		["DMR","DMR",250,188],
    ["RPG-7","RPG7V",300,225],
    ["SMAW","SMAW",300,225],
    ["Stinger","Stinger",1000,550],
    ["Javelin","Javelin",1500,750],
    
    ["Mk17 Sniper","SCAR_H_LNG_Sniper",500,375],
    ["Mk17 Sniper SD","SCAR_H_LNG_Sniper_SD",750,560],
    ["M110 NV","M110_NVG_EP1",1000,750],
    ["M107","m107",2000,1500],
		["AS50","BAF_AS50_scoped",2500,1875]
		
		
];

//Starting weapon list
startWeaponArray = [
	["Revolver","revolver_gold_EP1"],
	["M1911","Colt1911"],
	["Makarov","Makarov"],
	["G17","glock17_EP1"]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = [
		["PDW Mag","30Rnd_9x19_UZI_SD",10],
		["Sa vz.61 Mag","20Rnd_B_765x17_Ball",10],
		["Makarov SD Mag","8Rnd_9x18_MakarovSD",10],
	
	["8Rnd. Saiga 12K Slug","8Rnd_B_Saiga12_74Slug",10],
	["30Rnd. STANAG","30Rnd_556x45_Stanag",20],
	["30Rnd. STANAG SD","30Rnd_556x45_StanagSD",20],
	["100Rnd. M240","100Rnd_762x51_M240",25],
	["PKM Mag.","100Rnd_762x54_PK",25],
	["Mk17 Mag.","20Rnd_762x51_B_SCAR",25],
		["DMR Mag","20Rnd_762x51_DMR",30],
		["SVD Mag","10Rnd_762x54_SVD",30],
	["Mk17 SD Mag.","20Rnd_762x51_SB_SCAR",50],
	["10Rnd. M107","10Rnd_127x99_m107",50],
	["200Rnd. M249 Belt","200Rnd_556x45_M249",50],
    ["PG-7V.","PG7V",85],
    ["SMAW-HEAA","SMAW_HEAA",100],
    ["Stinger Ammo","Stinger",225],
    ["Javelin Ammo","Javelin",250],
	
		["Mine","Mine",500,375],
		["Satchel Charge","PipeBomb",1000,750]
];

//Gun Store Equipment List
//Text name, classname, buy cost
accessoriesArray = [
	["Range Finder","Binocular_Vector",500],
	["NV Goggles","NVGoggles",100],
    ["GPS","ItemGPS", 90]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
generalStore = [
	["Water","water",localize "STR_WL_ShopDescriptions_Water","client\icons\water.paa",30,15],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\icons\cannedfood.paa",30,15],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\briefcase.paa",1000,500],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",400,200],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",150,75],
    ["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",50,25],
	["Spawn Beacon","spawnBeacon",localize "STR_WL_ShopDescriptions_spawnBeacon","",3000,1500],
    ["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "",300,150]  
];

// Chernarus town and city array
//Marker Name, Radius, City Name
cityList = [
		["Town_0",600,"Chernogorsk"],
		["Town_1",200,"Prigorodki"],
		["Town_2",200,"Pusta"],
		["Town_3",600,"Elektro"],
		["Town_4",200,"Kamyshovo"],			
		["Town_5",200,"Tulga"],
		["Town_6",250,"Solnychniy"],
		["Town_7",200,"Nizhnoye"],
		["Town_8",500,"Berezino City"],
		["Town_9",500,"Berezino Dock"],
		["Town_10",250,"Khelm"],
		["Town_11",200,"Olsha"],
		["Town_12",350,"Krasnostav"],
		["Town_13",250,"Gvozdno"],
		["Town_14",300,"Grishino"],
		["Town_15",200,"Petrovka"],
		["Town_16",200,"Lopatino"],
		["Town_17",300,"Vybor"],
		["Town_18",250,"Pustoshka"],
		["Town_19",200,"Myshkino"],
		["Town_20",200,"Sosnovka"],
		["Town_21",300,"Zelenogorsk"],
		["Town_22",200,"Pavlovo"],
		["Town_23",200,"Kamenka"],
		["Town_24",200,"Komarovo"],
		["Town_25",200,"Balota"],
		["Town_26",200,"Bor"],
		["Town_27",200,"Drozhino"],
		["Town_28",200,"Kozlovka"],
		["Town_29",200,"Pulkovo"],
		["Town_30",200,"Pogorevka"],
		["Town_31",200,"Rogovo"],
		["Town_32",200,"Kabanino"],
		["Town_33",300,"StarySobor"],
		["Town_34",200,"NovySobor"],
		["Town_35",200,"Vyshnoye"],
		["Town_36",250,"Mogilevka"],
		["Town_37",200,"Guglovo"],
		["Town_38",350,"Gorka"],
		["Town_39",200,"Shakhovka"],
		["Town_40",200,"Staroye"],
		["Town_41",200,"Msta"],
		["Town_42",200,"Dolina"],
		["Town_43",200,"Orlovets"],
		["Town_44",200,"Polana"],
		["Town_45",200,"Nadezhdino"],
		["Town_46",200,"Dubrovka"]
];
cityLocations = [];
