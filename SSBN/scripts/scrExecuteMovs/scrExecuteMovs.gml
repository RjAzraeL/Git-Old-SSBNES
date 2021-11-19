///@arg id
function scrExecuteMovs(ID)
{
	switch(ID)
	{
		case(0):
		{
			///Fireball
			var Fireball = instance_create_depth(x + LastScaleXSprite * 12 , y + 4 , depth , objCombatFireball);
			Fireball.HorizontalMovement = ScaleXSprite*3;
			Fireball.VerticalMovement = -1;
			Fireball.Ide = 0;
			Fireball.Power = scrDameDato(Control.MovList , 0 , "Power");
			Fireball.KnockbackScaling = scrDameDato(Control.MovList , 0 , "Knockback Scaling");
			Fireball.image_xscale = ScaleXSprite;
			Fireball.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 0 , "Time Attacking");
			ds_list_add(self.MyMovs , Fireball);
			break;
		}
		case(1):
		{
			///Firepunch
			var Firepunch = instance_create_depth(x + LastScaleXSprite * 18 , y + 4 , depth-1 , objCombatFire);
			Firepunch.Ide = 1;
			Firepunch.FollowX = LastScaleXSprite * 18;
			Firepunch.FollowY = 4;
			Firepunch.Power = SmashActualPower;
			Firepunch.KnockbackScaling = scrDameDato(Control.MovList , 1 , "Knockback Scaling");
			Firepunch.image_xscale = ScaleXSprite;
			Firepunch.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 1 , "Time Attacking");
			
			///Punch
			var Punch = instance_create_depth(x + LastScaleXSprite * 5 , y + 4 , depth-1 , objCombatHitbox);
			Punch.sprite_index = sprChMarioFirePunchMask;
			Punch.Ide = 1;
			Punch.FollowX = LastScaleXSprite * 5;
			Punch.FollowY = 4;
			Punch.Creator = self;
			
			var LowPower = scrDameDato(Control.MovList , 0 , "Power");
			var LoadPorcentage = scrGetTotalPorcentageFromTwoValues(LowPower , SmashMaxPower , SmashActualPower);
			
			Punch.Power = scrGetTotalValueFromTwoPorcentages(11 , 15 , LoadPorcentage);
			Punch.KnockbackScaling = scrDameDato(Control.MovList , 1 , "Knockback Scaling");
			ds_list_add(self.MyMovs , Punch);
			
			Firepunch.Follower = Punch;
			
			break;
		}
		case(2):
		{
			///Flip
			var Flip = instance_create_depth(x , y , depth-1 , objCombatMarioFlip);
			Flip.Ide = 2;
			Flip.FollowX = LastScaleXSprite;
			Flip.FollowY = 0;
			Flip.Power = SmashActualPower;
			Flip.KnockbackScaling = scrDameDato(Control.MovList , 2 , "Knockback Scaling");
			Flip.image_xscale = ScaleXSprite;
			Flip.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 2 , "Time Attacking");
			ds_list_add(self.MyMovs , Flip);
			
			///Flip Back
			var FlipBack = instance_create_depth(x , y , depth-1 , objCombatMarioFlip);
			FlipBack.sprite_index = sprChMarioFlip2Mask;
			FlipBack.Ide = 2;
			FlipBack.FollowX = LastScaleXSprite;
			FlipBack.FollowY = 0;
			
			var LowPower = scrDameDato(Control.MovList , 2 , "Power");
			var LoadPorcentage = scrGetTotalPorcentageFromTwoValues(LowPower , SmashMaxPower , SmashActualPower);
			
			FlipBack.Power = scrGetTotalValueFromTwoPorcentages(10 , 13 , LoadPorcentage);
			
			FlipBack.KnockbackScaling = scrDameDato(Control.MovList , 2 , "Knockback Scaling");
			FlipBack.image_xscale = ScaleXSprite;
			FlipBack.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 2 , "Time Attacking");
			ds_list_add(self.MyMovs , FlipBack);
			break;
		}
		case(3):
		{
			///Flip
			var HeadBang = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			HeadBang.sprite_index = sprChMarioHeadBangMask;
			HeadBang.Ide = 3;
			HeadBang.FollowX = LastScaleXSprite;
			HeadBang.FollowY = 0;
			HeadBang.Power = SmashActualPower;
			HeadBang.KnockbackScaling = scrDameDato(Control.MovList , 3 , "Knockback Scaling");
			HeadBang.image_xscale = ScaleXSprite;
			HeadBang.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 3 , "Time Attacking");
			ds_list_add(self.MyMovs , HeadBang);
			
			break;
		}
	}
}