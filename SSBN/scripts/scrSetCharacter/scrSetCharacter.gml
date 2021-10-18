function scrSetCharacter()
{
	#region Set variables
	image_speed = .25;
	Jumps = scrGetValueCharacter("Jumps");
	//Aceleration = .2;
	Aceleration = scrGetValueCharacter("Aceleration");
	SpeedWalk = scrGetValueCharacter("Speed Walk");
	SpeedRun = scrGetValueCharacter("Speed Run");
	SpeedFall = scrGetValueCharacter("Speed Fall");
	JumpValue = scrGetValueCharacter("Jump Value");
	Gravity = scrGetValueCharacter("Gravity");
	VerticalMovementLimit = scrGetValueCharacter("Limit Fall");
	Weigth = scrGetValueCharacter("Weigth");
	Friction = scrGetValueCharacter("Friction");
	GravityFall = scrGetValueCharacter("Gravity Fall");

	#region Sprites
	
	
	SpriteWalk = scrGetSpriteIndex("Walk");
	SpriteRun = scrGetSpriteIndex("Run");
	SpriteJump = scrGetSpriteIndex("Jump");
	SpriteJump2 = scrGetSpriteIndex("Jump2");
	SpriteFall = scrGetSpriteIndex("Falling");
	SpriteIdle = scrGetSpriteIndex("Idle");
	SpriteDuck = scrGetSpriteIndex("Duck");
	SpriteSkid = scrGetSpriteIndex("Skid");
	
	#endregion
	
	#region SFX
	
	SfxSkid = scrGetValueCharacter("Sfx Skid");
	SfxJump = scrGetValueCharacter("Sfx Jump");
	
	
	
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
	return scrDameDato(Control.CharacterList , Control.CharacterId , Type);
}

///@arg string
function scrGetSpriteIndex(String)
{
	return asset_get_index("" + scrGetValueCharacter("Sprite") + string(String));
}