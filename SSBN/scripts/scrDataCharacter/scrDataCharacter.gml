function scrDataCharacter()
{
	Control.CharacterList = ds_list_create();
	/*0*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Sandbag" ,
	/*Description*/"" ,
	/*Lore*/"" ,
	/*Class*/"" ,
	/*Sprite*/"sprChSandbag" ,
	/*Jumps*/2,
	/*Aceleration*/.1,
	/*SpeedWalk*/1.5,
	/*SpeedRun*/1.9,
	/*SpeedFall*/1.4,
	/*JumpValue*/6,
	/*Gravity*/.3,
	/*GravityFall*/.2,
	/*LimitFall*/8,
	/*Weight*/5,
	/*Friction*/.08,
	/*Mask Duck*/sprCharacterIdle,
	/*Mask Normal*/sprCharacterIdle
	)	
	);
	
	/*1*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Mario" ,
	/*Description*/"Pega como loco" ,
	/*Lore*/"" ,
	/*Class*/"" ,
	/*Sprite*/"sprChMario" ,
	/*Jumps*/2,
	/*Aceleration*/.1,
	/*SpeedWalk*/1.1,
	/*SpeedRun*/2.2,
	/*SpeedFall*/1.9,
	/*JumpValue*/6,
	/*Gravity*/.3,
	/*GravityFall*/.3,
	/*LimitFall*/6,
	/*Weight*/4,
	/*Friction*/.1,
	/*Mask Duck*/sprChMarioMask,
	/*Mask Normal*/sprChMarioDuckMask
	)	
	);
}

///@arg list
function scrMapCharacter(List)
{
	var Paquete = ds_map_create();
	Paquete[? "Name"] = ds_list_find_value(List , 0);
	Paquete[? "Description"] = ds_list_find_value(List , 1);
	Paquete[? "Lore"] = ds_list_find_value(List , 2);
	Paquete[? "Class"] = ds_list_find_value(List , 3);
	Paquete[? "Sprite"] = ds_list_find_value(List , 4);
	Paquete[? "Jumps"] = ds_list_find_value(List , 5);
	Paquete[? "Aceleration"] = ds_list_find_value(List , 6);
	Paquete[? "Speed Walk"] = ds_list_find_value(List , 7);
	Paquete[? "Speed Run"] = ds_list_find_value(List , 8);
	Paquete[? "Speed Fall"] = ds_list_find_value(List , 9);
	Paquete[? "Jump Value"] = ds_list_find_value(List , 10);
	Paquete[? "Gravity"] = ds_list_find_value(List , 10);
	Paquete[? "Gravity Fall"] = ds_list_find_value(List , 11);
	Paquete[? "Limit Fall"] = ds_list_find_value(List , 12);
	Paquete[? "Weight"] = ds_list_find_value(List , 13);
	Paquete[? "Friction"] = ds_list_find_value(List , 14);
	Paquete[? "Mask Duck"] = ds_list_find_value(List , 15);
	Paquete[? "Mask Normal"] = ds_list_find_value(List , 16);
	
	ds_list_add(Control.CharacterList , Paquete);
}