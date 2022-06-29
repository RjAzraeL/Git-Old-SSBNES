function scrDataStage()
{
	Control.StageList = ds_list_create();
	
	/*0*/scrMapStage( scrCrearLista("Test sanctuary" , "SSB" , rmStgTest , "Battlefield"));
	/*1*/scrMapStage( scrCrearLista("Battlefield 0" , "SSB" , rmStgBattlefield0 , "Battlefield"));
	/*2*/scrMapStage( scrCrearLista("Battlefield 1" , "SSB" , rmStgBattlefield1 , "Battlefield"));
	/*3*/scrMapStage( scrCrearLista("Final destination" , "SSB" , rmStgFinalDestination , "Final Destination"));
	/*4*/scrMapStage( scrCrearLista("Underground" , "SMB" , rmStgUnderworld , "Underground"));
	/*5*/scrMapStage( scrCrearLista("Tower" , "SSB" , rmStgTower ,  "Battlefield"));
	
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