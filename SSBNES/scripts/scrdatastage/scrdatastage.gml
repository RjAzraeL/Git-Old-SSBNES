function scrDataStage()
{
	Control.StageList = ds_list_create();
	
	//NO SELECTABLE
	/*0*/scrMapStage( scrCrearLista("---" , "Super Smash Bros." , rmStgTest , "Bonus 1"));
	/*1*/scrMapStage( scrCrearLista("---" , "Super Smash Bros." , rmStgTest , "Bonus 1"));
	//DEMO
	/*2*/scrMapStage( scrCrearLista("BATTLEFIELD" , "Super Smash Bros." , rmStgBattlefield , "Battlefield"));
	/*3*/scrMapStage( scrCrearLista("FINAL#DESTINATION" , "Super Smash Bros." , rmStgFinalDestination , "Final Destination"));
	/*4*/scrMapStage( scrCrearLista("MUSHROOM#KINGDOM I" , "Super Mario Bros." , rmStgUnderworld , "SMB Overworld"));	
	/*5*/scrMapStage( scrCrearLista("BOWSER#CASTLE" , "Super Mario Bros." , rmStgBowserCastle , "Lotery"));	
	/*6*/scrMapStage( scrCrearLista("HYRULE#FOREST" , "The Legend of Zelda" , rmStgHyruleForest ,  "TLOZ Overworld"));	
	/*7*/scrMapStage( scrCrearLista("PARAPA#PALACE" , "The Legend of Zelda" , rmStgParapaPalace ,  "Palace"));	
	//BETA
	/*8*/scrMapStage( scrCrearLista("TEST#SANCTUARY" , "Super Smash Bros." , rmStgTest , "Bonus 1"));
	/*9*/scrMapStage( scrCrearLista("UNDERGROUND" , "Super Mario Bros." , rmStgUnderworld , "Underground"));
	/*10*/scrMapStage( scrCrearLista("BATTLEFIELD#ZERO" , "Super Smash Bros." , rmStgBattlefieldZero , "Menu 2 Theme"));
	/*11*/scrMapStage( scrCrearLista("THE#TOWER" , "Super Smash Bros." , rmStgTower ,  "Lotery"));
	
}
	

///@arg list
function scrMapStage(List)
{
	var Paquete = ds_map_create();
	Paquete[? "Name"] = ds_list_find_value(List , 0);
	Paquete[? "Saga"] = ds_list_find_value(List , 1);
	Paquete[? "Room"] = ds_list_find_value(List , 2);
	Paquete[? "Music"] = ds_list_find_value(List , 3);

	
	ds_list_add(Control.StageList , Paquete);
}