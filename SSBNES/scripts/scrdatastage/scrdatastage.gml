function scrDataStage()
{
	Control.StageList = ds_list_create();
	
	//NO SELECTABLE
	/*0*/scrMapStage( scrCrearLista("---" , "Super Smash Bros." , rmStgTest , "Bonus 1" , 124 , 74 , 282));
	/*1*/scrMapStage( scrCrearLista("---" , "Super Smash Bros." , rmStgTest , "Bonus 1" , 124 , 74 , 282));
	//ALPHA
	/*2*/scrMapStage( scrCrearLista("BATTLEFIELD" ,				"Super Smash Bros." ,		rmStgBattlefield ,			"Battlefield" , 136 , 54 , 300));
	/*3*/scrMapStage( scrCrearLista("FINAL#DESTINATION" ,		"Super Smash Bros." ,		rmStgFinalDestination ,		"Final Destination" , 136 , 54 , 300));
	/*4*/scrMapStage( scrCrearLista("MUSHROOM#KINGDOM I" ,		"Super Mario Bros." ,		rmStgMushroomKingdomI ,		"SMB Overworld" , 138 , -86 , 438));
	/*5*/scrMapStage( scrCrearLista("MUSHROOM#KINGDOM II" ,		"Super Mario Bros. 2" ,		rmStgMushroomKingdomII ,	"SMB Overworld" , 144 , 0 , 356));
	/*6*/scrMapStage( scrCrearLista("UNDERGROUND" ,				"Super Mario Bros." ,		rmStgUnderground ,			"Underground" , 128 , 50 , 305));
	/*7*/scrMapStage( scrCrearLista("ANOTHER#CASTLE" ,			"Super Mario Bros." ,		rmStgAnotherCastle ,		"Lotery" , 144 , 63 , 288));
	/*8*/scrMapStage( scrCrearLista("HYRULE#FOREST" ,			"The Legend of Zelda" ,		rmStgHyruleForest ,			"TLOZ Overworld" , 128 , 34 , 321));	
	/*9*/scrMapStage( scrCrearLista("PARAPA#PALACE" ,			"The Legend of Zelda" ,		rmStgParapaPalace ,			"Palace" , 160 , 50 , 305));	
	//BETA
	/*10*/scrMapStage( scrCrearLista("TEST#SANCTUARY" , "Super Smash Bros." , rmStgTest , "Bonus 1" , 124 , 74 , 282));
	/*11*/scrMapStage( scrCrearLista("BATTLEFIELD#ZERO" , "Super Smash Bros." , rmStgBattlefieldZero , "Menu 2 Theme" , 136 , 61 , 306));
	/*12*/scrMapStage( scrCrearLista("THE#TOWER" , "Super Smash Bros." , rmStgTower ,  "Lotery" , 136 , 55 , 300));
	/*13*/scrMapStage( scrCrearLista("HEAVEN#SANCTUARY" , "Crazy Chickens" , rmStgHeavenSanctuary , "Heaven Sanctuary" , 64 , 50 , 295));
	
}
	

///@arg list
function scrMapStage(List)
{
	var Paquete = ds_map_create();
	Paquete[? "Name"] = ds_list_find_value(List , 0);
	Paquete[? "Saga"] = ds_list_find_value(List , 1);
	Paquete[? "Room"] = ds_list_find_value(List , 2);
	Paquete[? "Music"] = ds_list_find_value(List , 3);
	Paquete[? "Void limit"] = ds_list_find_value(List , 4);
	Paquete[? "X1 limit"] = ds_list_find_value(List , 5);
	Paquete[? "X2 limit"] = ds_list_find_value(List , 6);

	
	ds_list_add(Control.StageList , Paquete);
}