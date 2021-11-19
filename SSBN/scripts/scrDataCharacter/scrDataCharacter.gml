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
	/*SpeedWalk*/1.1,
	/*SpeedRun*/3,
	/*SpeedFall*/1.9,
	/*JumpValue*/5.5,
	/*Gravity*/.3,
	/*GravityFall*/.1,
	/*LimitFall*/6,
	/*Weight*/2.9,
	/*Friction*/.020,
	/*Mask Duck*/sprChSandbagMaskDuck,
	/*Mask Normal*/sprChSandbagMask,
	/*Sfx Skid*/sfxKirbySkid,
	/*Sfx Jump*/sfxKirbyJump,
	/*Vertical Limit Porcentage*/35,
	/*Movs*/ scrCrearLista(0,1,2,3),
	/*Hud index*/0
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
	/*JumpValue*/5.5,
	/*Gravity*/.3,
	/*GravityFall*/.095,
	/*LimitFall*/6,
	/*Weight*/4,
	/*Friction*/0.06,
	/*Mask Duck*/sprChMarioMaskDuck,
	/*Mask Normal*/sprChMarioMask,
	/*Sfx Skid*/sfxMarioSkid,
	/*Sfx Jump*/sfxMarioJump,
	/*Vertical Limit Porcentage*/20,
	/*Movs*/ scrCrearLista(0,1,2,3),
	/*Hud index*/1
	)	
	);
	
	/*2*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Kirby" ,
	/*Description*/"Pega como loco" ,
	/*Lore*/"" ,
	/*Class*/"" ,
	/*Sprite*/"sprChKirby" ,
	/*Jumps*/5,
	/*Aceleration*/.1,
	/*SpeedWalk*/0.85,
	/*SpeedRun*/2,
	/*SpeedFall*/1.9,
	/*JumpValue*/5.5,
	/*Gravity*/.3,
	/*GravityFall*/.08,
	/*LimitFall*/6,
	/*Weight*/2.9,
	/*Friction*/0.09,
	/*Mask Duck*/sprChKirbyMaskDuck,
	/*Mask Normal*/sprChKirbyMask,
	/*Sfx Skid*/sfxKirbySkid,
	/*Sfx Jump*/sfxKirbyJump,
	/*Vertical Limit Porcentage*/25,
	/*Movs*/ scrCrearLista(0,1,2,3),
	/*Hud index*/2
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
	Paquete[? "Gravity"] = ds_list_find_value(List , 11);
	Paquete[? "Gravity Fall"] = ds_list_find_value(List , 12);
	Paquete[? "Limit Fall"] = ds_list_find_value(List , 13);
	Paquete[? "Weight"] = ds_list_find_value(List , 14);
	Paquete[? "Friction"] = ds_list_find_value(List , 15);
	Paquete[? "Mask Duck"] = ds_list_find_value(List , 16);
	Paquete[? "Mask Normal"] = ds_list_find_value(List , 17);
	Paquete[? "Sfx Skid"] = ds_list_find_value(List , 18);
	Paquete[? "Sfx Jump"] = ds_list_find_value(List , 19);
	Paquete[? "Vertical Limit Porcentage"] = ds_list_find_value(List , 20);
	Paquete[? "Movs"] = ds_list_find_value(List , 21);
	Paquete[? "Hud Index"] = ds_list_find_value(List , 22);
	
	ds_list_add(Control.CharacterList , Paquete);
}