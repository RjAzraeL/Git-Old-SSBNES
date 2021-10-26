function scrDataMov()
{
	Control.MovList = ds_list_create();
	
	/*0*/scrMapMov( scrCrearLista("Fireball" , 5 , true , 110 , 0 , false) );
	
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
	

	
	ds_list_add(Control.MovList , Paquete);
}