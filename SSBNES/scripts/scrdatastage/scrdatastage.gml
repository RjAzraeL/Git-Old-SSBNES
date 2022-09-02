function scrDataStage()
{
	Control.StageList = ds_list_create();
	
	/*0*/scrMapStage( scrCrearLista("TEST#SANCTUARY" , "Super Smash Bros." , rmStgTest , "Bonus 1"));
	/*1*/scrMapStage( scrCrearLista("BATTLEFIELD" , "Super Smash Bros." , rmStgBattlefield0 , "Menu 2 Theme"));
	/*2*/scrMapStage( scrCrearLista("BATTLEFIELD" , "Super Smash Bros." , rmStgBattlefield1 , "Battlefield"));
	/*3*/scrMapStage( scrCrearLista("FINAL#DESTINATION" , "Super Smash Bros." , rmStgFinalDestination , "Final Destination"));
	/*4*/scrMapStage( scrCrearLista("UNDERGROUND" , "Super Mario Bros." , rmStgUnderworld , "Underground"));
	/*5*/scrMapStage( scrCrearLista("THE#TOWER" , "Super Smash Bros." , rmStgTower ,  "Lotery"));
	
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