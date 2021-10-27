function scrDataMov()
{
	Control.MovList = ds_list_create();
	
	/*0*/scrMapMov( scrCrearLista("Fireball" , 5 , true , 110 , 0 , false , false , false , 5 , 15) );
	/*1*/scrMapMov( scrCrearLista("Firepunch" , 18 , true , 110 , 0 , false , true , true , 24 , 15) );
	
}
	

///@arg list
function scrMapMov(List)
{
	var Paquete = ds_map_create();
	Paquete[? "Name"] = ds_list_find_value(List , 0);
	Paquete[? "Power"] = ds_list_find_value(List , 1);
	Paquete[? "Root"] = ds_list_find_value(List , 2);
	Paquete[? "Knockback Scaling"] = ds_list_find_value(List , 3);
	Paquete[? "Knockback Fixed"] = ds_list_find_value(List , 4);
	Paquete[? "Lack of power"] = ds_list_find_value(List , 5);
	Paquete[? "Can Knockback"] = ds_list_find_value(List , 6);
	Paquete[? "Is Smash"] = ds_list_find_value(List , 7);
	Paquete[? "Max Power"] = ds_list_find_value(List , 8);
	Paquete[? "Time Attacking"] = ds_list_find_value(List , 9);
	

	
	ds_list_add(Control.MovList , Paquete);
}