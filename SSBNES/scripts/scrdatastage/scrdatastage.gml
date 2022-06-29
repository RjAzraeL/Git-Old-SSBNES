function scrDataStage()
{
	Control.StageList = ds_list_create();
	
	/*0*/scrMapStage( scrCrearLista("Test sanctuary" , "SSB" , rmStgTest));
	/*1*/scrMapStage( scrCrearLista("Battlefield 0" , "SSB" , rmStgBattlefield0));
	/*2*/scrMapStage( scrCrearLista("Battlefield 1" , "SSB" , rmStgBattlefield1));
	/*3*/scrMapStage( scrCrearLista("Final destination" , "SSB" , rmStgFinalDestination));
	/*4*/scrMapStage( scrCrearLista("Underground" , "SMB" , rmStgUnderworld));
	/*5*/scrMapStage( scrCrearLista("Tower" , "SSB" , rmStgTower));
	
}
	

///@arg list
function scrMapStage(List)
{
	var Paquete = ds_map_create();
	Paquete[? "Name"] = ds_list_find_value(List , 0);
	Paquete[? "Saga"] = ds_list_find_value(List , 1);
	Paquete[? "Room"] = ds_list_find_value(List , 2);

	
	ds_list_add(Control.StageList , Paquete);
}