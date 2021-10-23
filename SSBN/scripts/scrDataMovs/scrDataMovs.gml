function scrDataMov()
{
	Control.MovList = ds_list_create();
	
	/*0*/scrMapMov( scrCrearLista("Fireball" , 6) );
	
}
	

///@arg list
function scrMapMov(List)
{
	var Paquete = ds_map_create();
	Paquete[? "Name"] = ds_list_find_value(List , 0);
	Paquete[? "Power"] = ds_list_find_value(List , 1);

	
	ds_list_add(Control.MovList , Paquete);
}