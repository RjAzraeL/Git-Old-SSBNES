function scrDataMusic()
{
	Control.MusicList = ds_list_create();
	
	/*0*/scrMapMusic( scrCrearLista("Battlefield" , "Bulby" , "Super Smash Bros." , scrCrearLista(sndOst07Battlefield_a , sndOst07Battlefield_b) ) );
	/*1*/scrMapMusic( scrCrearLista("Final Destination" , "Coatlesscarl" , "Super Smash Bros." , scrCrearLista(sndOst08FinalDestination_a , sndOst08FinalDestination_b) ) );
	/*2*/scrMapMusic( scrCrearLista("Menu Theme" , "Bulby" , "Super Smash Bros." , scrCrearLista(sndOst02Menu) ) );
	/*3*/scrMapMusic( scrCrearLista("Underground" , "Famulator" , "Super Mario Bros." , scrCrearLista(sndOst09Underground) ) );
	
}
	

///@arg list
function scrMapMusic(List)
{
	var Paquete = ds_map_create();
	Paquete[? "Name"] = ds_list_find_value(List , 0);
	Paquete[? "Autor"] = ds_list_find_value(List , 1);
	Paquete[? "Saga"] = ds_list_find_value(List , 2);
	Paquete[? "Body"] = ds_list_find_value(List , 3);

	
	ds_list_add(Control.MusicList , Paquete);
}