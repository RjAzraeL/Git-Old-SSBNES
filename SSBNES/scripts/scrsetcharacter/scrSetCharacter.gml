function scrSetCharacter()
{
	#region Set variables
	image_speed = .25;
	Jumps = scrGetValueCharacter("Jumps");
	JumpAvailable = Jumps;
	//Aceleration = .2;
	Aceleration = scrGetValueCharacter("Aceleration");
	SpeedWalk = scrGetValueCharacter("Speed Walk");
	SpeedRun = scrGetValueCharacter("Speed Run");
	SpeedFall = scrGetValueCharacter("Speed Fall");
	JumpValue = scrGetValueCharacter("Jump Value");
	Gravity = scrGetValueCharacter("Gravity");
	VerticalMovementLimit = scrGetValueCharacter("Limit Fall");
	Weight = scrGetValueCharacter("Weight");
	Friction = scrGetValueCharacter("Friction");
	GravityFall = scrGetValueCharacter("Gravity Fall");
	VerticalLimitPorcentage = scrGetValueCharacter("Vertical Limit Porcentage");
	VerticalMovementLimitValue = ( VerticalMovementLimit * (VerticalLimitPorcentage/100) );
	#region Sprites
	
	
	SpriteWalk = scrGetSpriteIndex("Walk");
	SpriteRun = scrGetSpriteIndex("Run");
	SpriteJump = scrGetSpriteIndex("Jump");
	SpriteJump2 = scrGetSpriteIndex("Jump2");
	SpriteFall = scrGetSpriteIndex("Falling");
	SpriteIdle = scrGetSpriteIndex("Idle");
	SpriteDuck = scrGetSpriteIndex("Duck");
	SpriteSkid = scrGetSpriteIndex("Skid");
	SpriteTrance = scrGetSpriteIndex("Trance");
	SpriteTranceRun = scrGetSpriteIndex("TranceRun");
	SpriteHurt = scrGetSpriteIndex("Hurt");
	SpriteAttackGroundNeutral = scrGetSpriteIndex("GroundAttackNeutral");
	SpriteAttackGroundSide = scrGetSpriteIndex("GroundAttackSide");
	SpriteAttackGroundDown = scrGetSpriteIndex("GroundAttackDown");
	SpriteAttackGroundUp = scrGetSpriteIndex("GroundAttackUp");
	SpriteSmashGroundSide = scrGetSpriteIndex("GroundSmashSide");
	SpriteSmashGroundDown = scrGetSpriteIndex("GroundSmashDown");
	SpriteSmashGroundUp = scrGetSpriteIndex("GroundSmashUp");
	SpriteAttackAerialNeutral = scrGetSpriteIndex("AerialNeutral");
	SpriteAttackAerialSide = scrGetSpriteIndex("AerialSide");
	SpriteAttackAerialBack = scrGetSpriteIndex("AerialBack");
	SpriteAttackAerialUp = scrGetSpriteIndex("AerialUp");
	SpriteAttackAerialDown = scrGetSpriteIndex("AerialDown");
	
	#endregion
	
	#region SFX
	
	SfxSkid = scrGetValueCharacter("Sfx Skid");
	SfxJump = scrGetValueCharacter("Sfx Jump");
	#endregion

	#region Movs
	MovGroundNeutral = ds_list_find_value( scrGetValueCharacter("Movs") , 0);
	MovGroundSide = ds_list_find_value( scrGetValueCharacter("Movs") , 1);
	MovGroundSmashSide = ds_list_find_value( scrGetValueCharacter("Movs") , 1);
	MovGroundSmashDown = ds_list_find_value( scrGetValueCharacter("Movs") , 2);
	MovGroundSmashUp = ds_list_find_value( scrGetValueCharacter("Movs") , 3);
	MovGroundAttackSide = ds_list_find_value( scrGetValueCharacter("Movs") , 4);
	MovGroundAttackDown = ds_list_find_value( scrGetValueCharacter("Movs") , 5);
	MovGroundAttackUp = ds_list_find_value( scrGetValueCharacter("Movs") , 6);
	MovAerialNeutral = ds_list_find_value( scrGetValueCharacter("Movs") , 7);
	MovAerialSide = ds_list_find_value( scrGetValueCharacter("Movs") , 8);
	MovAerialBack = ds_list_find_value( scrGetValueCharacter("Movs") , 9);
	MovAerialUp = ds_list_find_value( scrGetValueCharacter("Movs") , 11);
	MovAerialDown = ds_list_find_value( scrGetValueCharacter("Movs") , 10);
	
	#endregion
	
	#region Skin
	
	ColorBase[0] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c0_0"]);
	ColorBase[1] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c0_1"]);
	ColorBase[2] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c0_2"]);
	ColorBase[3] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c0_3"]);
	
	ColorSkin[0] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c"+string(Control.CharacterSkin[Position])+"_0"]);
	ColorSkin[1] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c"+string(Control.CharacterSkin[Position])+"_1"]);
	ColorSkin[2] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c"+string(Control.CharacterSkin[Position])+"_2"]);
	ColorSkin[3] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c"+string(Control.CharacterSkin[Position])+"_3"]);
	
	visible = true;
	
	#endregion

	#region Mask
	MaskDuck = scrGetValueCharacter("Mask Duck");
	MaskNormal = scrGetValueCharacter("Mask Normal");
	#endregion

	#endregion
}

///@arg type
function scrGetValueCharacter(Type)
{
	return scrDameDato(Control.CharacterList , Control.CharacterId[Position] , Type);
}

///@arg id
///@arg string
function scrGetSpriteIndexGeneric(Idex , String)
{
	return asset_get_index("" + scrDameDato(Control.CharacterList , Idex , "Sprite") + string(String));
}

///@arg string
function scrGetSpriteIndex(String)
{
	return asset_get_index("" + scrGetValueCharacter("Sprite") + string(String));
}