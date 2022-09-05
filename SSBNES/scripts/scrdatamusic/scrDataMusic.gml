function scrDataMusic()
{
	Control.MusicList = ds_list_create();
	
	/*0*/scrMapMusic( scrCrearLista("Battlefield" , "Bulby" , "Super Smash Bros." , scrCrearLista(sndOst07Battlefield_a , sndOst07Battlefield_b) ) );
	/*1*/scrMapMusic( scrCrearLista("Final Destination" , "Coatlesscarl" , "Super Smash Bros." , scrCrearLista(sndOst08FinalDestination_a , sndOst08FinalDestination_b) ) );
	/*2*/scrMapMusic( scrCrearLista("Menu Theme" , "Bulby" , "Super Smash Bros." , scrCrearLista(sndOst02Menu) ) );
	/*3*/scrMapMusic( scrCrearLista("Underground" , "Famulator" , "Super Mario Bros." , scrCrearLista(sndOst09Underground) ) );
	/*4*/scrMapMusic( scrCrearLista("Bonus 1" , "Tater-Tot Tunes" , "Super Smash Bros." , scrCrearLista(sndOst04Bonus1_a , sndOst04Bonus1_b) ) );
	/*5*/scrMapMusic( scrCrearLista("Bonus 2" , "Tater-Tot Tunes" , "Super Smash Bros." , scrCrearLista(sndOst05Bonus2_a , sndOst05Bonus2_b) ) );
	/*6*/scrMapMusic( scrCrearLista("Lotery" , "ZeroJanitor" , "Super Smash Bros." , scrCrearLista(sndOst06Lotery_a , sndOst06Lotery_b) ) );
	/*7*/scrMapMusic( scrCrearLista("Menu 2 Theme" , "Bulby" , "Super Smash Bros." , scrCrearLista(sndOst03Menu2_a , sndOst03Menu2_b) ) );
	/*8*/scrMapMusic( scrCrearLista("Opening" , "Coatlesscarl" , "Super Smash Bros." , scrCrearLista(sndOst01Opening) ) );
	/*9*/scrMapMusic( scrCrearLista("TLOZ Overworld" , "Levi Davis" , "The Legend of Zelda" , scrCrearLista(sndOst10TLOZOverworld_a , sndOst10TLOZOverworld_b) ) );
	/*10*/scrMapMusic( scrCrearLista("SMB Ending" , "Nintendo" , "Super Mario Bros." , scrCrearLista(sndOst11SMBEnding) ) );
	/*11*/scrMapMusic( scrCrearLista("SMB Overworld" , "Nintendo" , "Super Mario Bros." , scrCrearLista(sndOst12SMBOverworld) ) );
	/*12*/scrMapMusic( scrCrearLista("Palace" , "Nintendo" , "The Legend of Zelda" , scrCrearLista(sndOst13Palace_a , sndOst13Palace_b) ) );
	
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