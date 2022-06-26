///@arg idmov
///@arg aerial
///@arg sprite
///@arg execution_rate
function scrPrepareMov(_IdeMov , _AerialBool , _Sprite , _ExecutionRate)
{
	scrAddMov(_IdeMov , _ExecutionRate , self);
	Attacking = true;
	AttackingHold = scrDameDato(Control.MovList , _IdeMov , "Is Smash");
	AttackingHoldIndex = 1;
	SmashMaxPower = scrDameDato(Control.MovList , _IdeMov , "Max Power");
	SmashGrownPower = .1;
	SpriteAttacking = _Sprite;
	SmashActualPower = scrDameDato(Control.MovList , _IdeMov , "Power");
	SpriteAttackingSpeed = scrDameDato(Control.MovList , _IdeMov , "Animation Speed");
	image_index = 0;
	RootAttack = scrDameDato(Control.MovList , _IdeMov , "Root");
	CooldownJump = 0;
	AerialAvailable = _AerialBool;
	
}