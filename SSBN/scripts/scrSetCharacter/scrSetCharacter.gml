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
	SpriteSmashGroundSide = scrGetSpriteIndex("GroundSmashSide");
	SpriteSmashGroundDown = scrGetSpriteIndex("GroundSmashDown");
	SpriteSmashGroundUp = scrGetSpriteIndex("GroundSmashUp");
	
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

///@arg string
function scrGetSpriteIndex(String)
{
	return asset_get_index("" + scrGetValueCharacter("Sprite") + string(String));
}