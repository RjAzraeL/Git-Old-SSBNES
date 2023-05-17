function scrDataCharacter()
{
	Control.CharacterList = ds_list_create();
	
	/*0*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Sandbag" ,
	/*Description*/"Super Smash Brothers" ,
	/*Lore*/"" ,
	/*Class*/"" ,
	/*Sprite*/"sprChSandbag" ,
	/*Jumps*/2,
	/*Aceleration*/.15,
	/*SpeedWalk*/1.2,
	/*SpeedRun*/3.1,
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
	/*Movs*/ scrCrearLista(0,1,2,3,4,5,6,7,8,9,10,11),
	/*Hud index*/1,
	/*Roster id*/0,
	/*Palette name*/"SAN",
	/*Palette code*/0,
	/*MovList Recover*/scrCrearLista("Aerial Down" , "Aerial Up"),
	/*MovList Range*/scrCrearLista("Ground Neutral"),
	/*MovList Melee*/scrCrearLista("Ground Attack Side" , "Ground Attack Up" , "Ground Attack Down" , "Ground Smash Side" , "Ground Smash Down" , "Ground Smash Up" , "Aerial Back" , "Aerial Side"),
	/*MovList Special*/scrCrearLista(),
	/*Announcer Name*/ sfxButtonOk
	)	
	);
	
	/*1*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Mario" ,
	/*Description*/"Super Mario Bros." ,
	/*Lore*/"" ,
	/*Class*/"" ,
	/*Sprite*/"sprChMario" ,
	/*Jumps*/2,
	/*Aceleration*/.12,
	/*SpeedWalk*/1.15,
	/*SpeedRun*/2.85,
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
	/*Movs*/ scrCrearLista(0,1,2,3,4,5,6,7,8,9,10,11),
	/*Hud index*/2,
	/*Roster id*/0,
	/*Palette name*/"MAR",
	/*Palette code*/0,
	/*MovList Recover*/scrCrearLista("Aerial Down" , "Aerial Up"),
	/*MovList Range*/scrCrearLista("Ground Neutral"),
	/*MovList Melee*/scrCrearLista("Ground Attack Side" , "Ground Attack Up" , "Ground Attack Down" , "Ground Smash Side" , "Ground Smash Down" , "Ground Smash Up" , "Aerial Back" , "Aerial Side"),
	/*MovList Special*/scrCrearLista(),
	/*Announcer Name*/ sndAnnouncerChMAR
	)	
	);
	
	
	
	/*2*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Link" ,
	/*Description*/"The Legend of Zelda" ,
	/*Lore*/"" ,
	/*Class*/"" ,
	/*Sprite*/"sprChLink" ,
	/*Jumps*/2,
	/*Aceleration*/.12,
	/*SpeedWalk*/1.15,
	/*SpeedRun*/2.85,
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
	/*Movs*/ scrCrearLista(0,1,2,3,4,5,6,7,8,9,10,11),
	/*Hud index*/3,
	/*Roster id*/5,
	/*Palette name*/"LIN",
	/*Palette code*/0,
	/*MovList Recover*/scrCrearLista("Aerial Down" , "Aerial Up"),
	/*MovList Range*/scrCrearLista("Ground Neutral"),
	/*MovList Melee*/scrCrearLista("Ground Attack Side" , "Ground Attack Up" , "Ground Attack Down" , "Ground Smash Side" , "Ground Smash Down" , "Ground Smash Up" , "Aerial Back" , "Aerial Side"),
	/*MovList Special*/scrCrearLista(),
	/*Announcer Name*/ sndAnnouncerChMAR
	)	
	);
	
	/*3*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Kirby" ,
	/*Description*/"Kirby's Adventure" ,
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
	/*Movs*/ scrCrearLista(0,1,2,3,4,5,6,7,8,9,10,11),
	/*Hud index*/4,
	/*Roster id*/7,
	/*Palette name*/"KIR",
	/*Palette code*/0,
	/*MovList Recover*/scrCrearLista("Aerial Down" , "Aerial Up"),
	/*MovList Range*/scrCrearLista("Ground Neutral"),
	/*MovList Melee*/scrCrearLista("Ground Attack Side" , "Ground Attack Up" , "Ground Attack Down" , "Ground Smash Side" , "Ground Smash Down" , "Ground Smash Up" , "Aerial Back" , "Aerial Side"),
	/*MovList Special*/scrCrearLista(),
	/*Announcer Name*/ sndAnnouncerChMAR
	)
	);
	
	/*4*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Mega Man" ,
	/*Description*/"Mega Man" ,
	/*Lore*/"" ,
	/*Class*/"" ,
	/*Sprite*/"sprChMegaman" ,
	/*Jumps*/2,
	/*Aceleration*/.12,
	/*SpeedWalk*/1.15,
	/*SpeedRun*/2.85,
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
	/*Movs*/ scrCrearLista(0,1,2,3,4,5,6,7,8,9,10,11),
	/*Hud index*/5,
	/*Roster id*/31,
	/*Palette name*/"MEG",
	/*Palette code*/0,
	/*MovList Recover*/scrCrearLista("Aerial Down" , "Aerial Up"),
	/*MovList Range*/scrCrearLista("Ground Neutral"),
	/*MovList Melee*/scrCrearLista("Ground Attack Side" , "Ground Attack Up" , "Ground Attack Down" , "Ground Smash Side" , "Ground Smash Down" , "Ground Smash Up" , "Aerial Back" , "Aerial Side"),
	/*MovList Special*/scrCrearLista(),
	/*Announcer Name*/ sndAnnouncerChMAR
	)	
	);
	
	/*5*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Samus" ,
	/*Description*/"Metroid" ,
	/*Lore*/"" ,
	/*Class*/"" ,
	/*Sprite*/"sprChSamus" ,
	/*Jumps*/2,
	/*Aceleration*/.12,
	/*SpeedWalk*/1.15,
	/*SpeedRun*/2.85,
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
	/*Movs*/ scrCrearLista(0,1,2,3,4,5,6,7,8,9,10,11),
	/*Hud index*/6,
	/*Roster id*/12,
	/*Palette name*/"SAM",
	/*Palette code*/0,
	/*MovList Recover*/scrCrearLista("Aerial Down" , "Aerial Up"),
	/*MovList Range*/scrCrearLista("Ground Neutral"),
	/*MovList Melee*/scrCrearLista("Ground Attack Side" , "Ground Attack Up" , "Ground Attack Down" , "Ground Smash Side" , "Ground Smash Down" , "Ground Smash Up" , "Aerial Back" , "Aerial Side"),
	/*MovList Special*/scrCrearLista(),
	/*Announcer Name*/ sndAnnouncerChMAR
	)	
	);
	
	/*6*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Pit" ,
	/*Description*/"Kid Icarus" ,
	/*Lore*/"" ,
	/*Class*/"" ,
	/*Sprite*/"sprChPit" ,
	/*Jumps*/4,
	/*Aceleration*/.12,
	/*SpeedWalk*/1.15,
	/*SpeedRun*/2.85,
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
	/*Movs*/ scrCrearLista(0,1,2,3,4,5,6,7,8,9,10,11),
	/*Hud index*/7,
	/*Roster id*/14,
	/*Palette name*/"PIT",
	/*Palette code*/0,
	/*MovList Recover*/scrCrearLista("Aerial Down" , "Aerial Up"),
	/*MovList Range*/scrCrearLista("Ground Neutral"),
	/*MovList Melee*/scrCrearLista("Ground Attack Side" , "Ground Attack Up" , "Ground Attack Down" , "Ground Smash Side" , "Ground Smash Down" , "Ground Smash Up" , "Aerial Back" , "Aerial Side"),
	/*MovList Special*/scrCrearLista(),
	/*Announcer Name*/ sndAnnouncerChMAR
	)	
	);
	
		/*40*/
	scrMapCharacter( 
	scrCrearLista(
	/*Name*/"Pollier" ,
	/*Description*/"Crazy Chickens" ,
	/*Lore*/"" ,
	/*Class*/"" ,
	/*Sprite*/"sprChPollier" ,
	/*Jumps*/3,
	/*Aceleration*/.18,
	/*SpeedWalk*/0.90,
	/*SpeedRun*/2.2,
	/*SpeedFall*/1.96,
	/*JumpValue*/5.5,
	/*Gravity*/.3,
	/*GravityFall*/.08,
	/*LimitFall*/6,
	/*Weight*/2.5,
	/*Friction*/0.092,
	/*Mask Duck*/sprChPollierMaskDuck,
	/*Mask Normal*/sprChPollierMask,
	/*Sfx Skid*/sfxKirbySkid,
	/*Sfx Jump*/sfxPollierJump,
	/*Vertical Limit Porcentage*/25,
	/*Movs*/ scrCrearLista(12,18,19,20,21,16,17,22,23,24,25,26),
	/*Hud index*/8,
	/*Roster id*/40,
	/*Palette name*/"POL",
	/*Palette code*/0,
	/*MovList Recover*/scrCrearLista("Aerial Up"),
	/*MovList Range*/scrCrearLista("Ground Neutral" , "Ground Smash Side" , "Aerial Back" , "Aerial Down"),
	/*MovList Melee*/scrCrearLista("Ground Attack Side" , "Ground Attack Down" , "Ground Attack Up" , "Aerial Side"),
	/*MovList Special*/scrCrearLista("Aerial Neutral" , "Ground Smash Down"),
	/*Announcer Name*/ sndAnnouncerChPOL
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
	Paquete[? "Roster id"] = ds_list_find_value(List , 23);
	Paquete[? "Palette Name"] = ds_list_find_value(List , 24);
	Paquete[? "Palette Code"] = ds_list_find_value(List , 25);
	Paquete[? "ListMov Recover"] = ds_list_find_value(List , 26);
	Paquete[? "ListMov Range"] = ds_list_find_value(List , 27);
	Paquete[? "ListMov Melee"] = ds_list_find_value(List , 28);
	Paquete[? "ListMov Special"] = ds_list_find_value(List , 29);
	Paquete[? "Announcer Name"] = ds_list_find_value(List , 30);
	
	ds_list_add(Control.CharacterList , Paquete);
	
	var Size = ds_list_size(Control.CharacterList)-1;
	scrGetPalette(Size);
}