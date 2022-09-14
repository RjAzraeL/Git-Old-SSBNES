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
			ds_list_add(self.MyMovs , Fireball.id);
			ActualMov = ID;
			ProxMovs = 1;
			if (scrDameDato(Control.MovList , 0 , "Is Aerial"))
			{
				ds_list_add(AerialAvaiableList , self.id);
			}
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
			Firepunch.PowerScale = true;
			Firepunch.KnockbackScaling = scrDameDato(Control.MovList , 1 , "Knockback Scaling");
			Firepunch.image_xscale = ScaleXSprite;
			Firepunch.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 1 , "Time Attacking");
			ds_list_add(self.MyMovs , Firepunch.id);
			ProxMovs = 1;
			///Punch
			var Punch = instance_create_depth(x + LastScaleXSprite * 5 , y + 4 , depth-1 , objCombatHitbox);
			Punch.sprite_index = sprChMarioFirePunchMask;
			Punch.Ide = 1;
			Punch.FollowX = LastScaleXSprite * 5;
			Punch.FollowY = 4;
			Punch.Creator = self;
			
			
			var LowPower = scrDameDato(Control.MovList , 0 , "Power");
			var LoadPorcentage = scrGetTotalPorcentageFromTwoValues(LowPower , SmashMaxPower , SmashActualPower);
			
			Punch.MinValuePower = 11;
			Punch.MaxValuePower = 15;
			Punch.Power = scrGetTotalValueFromTwoPorcentages(11 , 15 , LoadPorcentage);
			Punch.KnockbackScaling = scrDameDato(Control.MovList , 1 , "Knockback Scaling");
			Punch.PowerScale = true;
			ds_list_add(self.MyMovs , Punch.id);
			
			Firepunch.Follower = Punch;
			ActualMov = ID;
			
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
			Flip.PowerScale = true;
			Flip.KnockbackScaling = scrDameDato(Control.MovList , 2 , "Knockback Scaling");
			Flip.image_xscale = ScaleXSprite;
			Flip.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 2 , "Time Attacking");
			ds_list_add(self.MyMovs , Flip.id);
			
			///Flip Back
			var FlipBack = instance_create_depth(x , y , depth-1 , objCombatMarioFlip);
			FlipBack.sprite_index = sprChMarioFlip2Mask;
			FlipBack.Ide = 2;
			FlipBack.FollowX = LastScaleXSprite;
			FlipBack.FollowY = 0;
			
			var LowPower = scrDameDato(Control.MovList , 2 , "Power");
			var LoadPorcentage = scrGetTotalPorcentageFromTwoValues(LowPower , SmashMaxPower , SmashActualPower);
			
			FlipBack.Power = scrGetTotalValueFromTwoPorcentages(10 , 13 , LoadPorcentage);
			FlipBack.PowerScale = true;
			
			
			FlipBack.MinValuePower = 10;
			FlipBack.MaxValuePower = 13;	
			
			FlipBack.KnockbackScaling = scrDameDato(Control.MovList , 2 , "Knockback Scaling");
			FlipBack.image_xscale = ScaleXSprite;
			FlipBack.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 2 , "Time Attacking");
			ds_list_add(self.MyMovs , FlipBack.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(3):
		{
			///HeadBang
			var HeadBang = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			HeadBang.sprite_index = sprChMarioHeadBangMask;
			HeadBang.PowerScale = true;
			HeadBang.Ide = 3;
			HeadBang.FollowX = LastScaleXSprite;
			HeadBang.FollowY = 0;
			HeadBang.Power = SmashActualPower;
			HeadBang.KnockbackScaling = scrDameDato(Control.MovList , 3 , "Knockback Scaling");
			HeadBang.image_xscale = ScaleXSprite;
			HeadBang.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 3 , "Time Attacking");
			ds_list_add(self.MyMovs , HeadBang.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(4):
		{
			///FootBang
			AcelerationValue = 3;
			var FootBang = instance_create_depth(x , y , depth-1 , objCombatHitboxNotImageFollower);
			FootBang.sprite_index = sprChMarioFootBangMask;
			FootBang.PowerScale = false;
			FootBang.Ide = 4;
			FootBang.FollowX = LastScaleXSprite;
			FootBang.FollowY = 0;
			FootBang.Power = scrDameDato(Control.MovList , 4 , "Power");
			FootBang.KnockbackScaling = scrDameDato(Control.MovList , 4 , "Knockback Scaling");
			FootBang.image_xscale = ScaleXSprite;
			FootBang.Creator = self;
			FootBang.image_speed = 0;
			FootBang.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , 4 , "Time Attacking");
			ds_list_add(self.MyMovs , FootBang.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(5):
		{
			///FootBang2
			var FootBang2 = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			FootBang2.sprite_index = sprChMarioFootBang2Mask;
			FootBang2.PowerScale = false;
			FootBang2.Ide = 5;
			FootBang2.FollowX = LastScaleXSprite;
			FootBang2.FollowY = 0;
			FootBang2.Power = scrDameDato(Control.MovList , 5 , "Power");
			FootBang2.KnockbackScaling = scrDameDato(Control.MovList , 5 , "Knockback Scaling");
			FootBang2.image_xscale = ScaleXSprite;
			FootBang2.Creator = self;
			FootBang2.image_speed = 0;
			FootBang2.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , 5 , "Time Attacking");
			ds_list_add(self.MyMovs , FootBang2.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(6):
		{
			///Highpunch
			var Highpunch = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			Highpunch.sprite_index = sprChMarioHighPunchMask;
			Highpunch.PowerScale = false;
			Highpunch.Ide = 6;
			Highpunch.FollowX = LastScaleXSprite;
			Highpunch.FollowY = 0;
			Highpunch.Power = scrDameDato(Control.MovList , 6 , "Power");
			Highpunch.KnockbackScaling = scrDameDato(Control.MovList , 6 , "Knockback Scaling");
			Highpunch.image_xscale = ScaleXSprite;
			Highpunch.Creator = self;
			Highpunch.image_speed = 0;
			Highpunch.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , 6 , "Time Attacking");
			ds_list_add(self.MyMovs , Highpunch.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(7):
		{
			///AerialFootbang
			var AerialFootbang = instance_create_depth(x , y , depth-1 , objCombatHitboxNotImageFollower);
			AerialFootbang.sprite_index = sprChMarioAerialFootbangMask;
			AerialFootbang.PowerScale = false;
			AerialFootbang.Ide = 7;
			AerialFootbang.FollowX = LastScaleXSprite;
			AerialFootbang.FollowY = 0;
			AerialFootbang.Power = scrDameDato(Control.MovList , 7 , "Power");
			AerialFootbang.KnockbackScaling = scrDameDato(Control.MovList , 7 , "Knockback Scaling");
			AerialFootbang.image_xscale = ScaleXSprite;
			AerialFootbang.Creator = self;
			AerialFootbang.image_speed = 0;
			AerialFootbang.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , 7 , "Time Attacking");
			ds_list_add(self.MyMovs , AerialFootbang.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(8):
		{
			HorizontalMovement = ScaleX * 4;
			///Highpunch
			var Highpunch = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			Highpunch.sprite_index = sprChMarioAerialSideMask;
			Highpunch.PowerScale = false;
			var _IdeMov = 8;
			Highpunch.Ide = 8;
			Highpunch.FollowX = LastScaleXSprite;
			Highpunch.FollowY = 0;
			Highpunch.Power = scrDameDato(Control.MovList , _IdeMov , "Power");
			Highpunch.KnockbackScaling = scrDameDato(Control.MovList , _IdeMov , "Knockback Scaling");
			Highpunch.image_xscale = ScaleXSprite;
			Highpunch.Creator = self;
			Highpunch.image_speed = 0;
			Highpunch.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , _IdeMov , "Time Attacking");
			ds_list_add(self.MyMovs , Highpunch.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(9):
		{
			VerticalMovement = -1;
			AcelerationValue = 4;
			///Back
			var BackfootBang = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			BackfootBang.sprite_index = sprChMarioAerialBackMask;
			BackfootBang.PowerScale = false;
			var _IdeMov = 9;
			BackfootBang.Ide = _IdeMov;
			BackfootBang.FollowX = LastScaleXSprite;
			BackfootBang.FollowY = 0;
			BackfootBang.Power = scrDameDato(Control.MovList , _IdeMov , "Power");
			BackfootBang.KnockbackScaling = scrDameDato(Control.MovList , _IdeMov , "Knockback Scaling");
			BackfootBang.image_xscale = ScaleXSprite;
			BackfootBang.Creator = self;
			BackfootBang.image_speed = 0;
			BackfootBang.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , _IdeMov , "Time Attacking");
			ds_list_add(self.MyMovs , BackfootBang.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(10):
		{
			///DownFlipAerial
			var DownFlipAerial = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			DownFlipAerial.sprite_index = sprChMarioAerialDownMask;
			DownFlipAerial.PowerScale = false;
			var _IdeMov = 10;
			DownFlipAerial.CanGrab = scrDameDato(Control.MovList , _IdeMov , "Can Grab");
			DownFlipAerial.MultipleHits = scrDameDato(Control.MovList , _IdeMov , "Multiple Hits");
			DownFlipAerial.Ide = _IdeMov;
			DownFlipAerial.FollowX = LastScaleXSprite;
			DownFlipAerial.FollowY = 0;
			DownFlipAerial.Power = scrDameDato(Control.MovList , _IdeMov , "Power");
			DownFlipAerial.KnockbackScaling = scrDameDato(Control.MovList , _IdeMov , "Knockback Scaling");
			DownFlipAerial.image_xscale = ScaleXSprite;
			DownFlipAerial.Creator = self;
			DownFlipAerial.image_speed = 0;
			DownFlipAerial.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , _IdeMov , "Time Attacking");
			ds_list_add(self.MyMovs , DownFlipAerial.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(11):
		{
			///Up
			scrFreeJump(7);
			var Up = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			Up.sprite_index = sprChMarioAerialUpMask;
			Up.PowerScale = false;
			var _IdeMov = 11;
			Up.Ide = _IdeMov;
			Up.FollowX = LastScaleXSprite;
			Up.FollowY = 0;
			Up.Power = scrDameDato(Control.MovList , _IdeMov , "Power");
			Up.KnockbackScaling = scrDameDato(Control.MovList , _IdeMov , "Knockback Scaling");
			Up.image_xscale = ScaleXSprite;
			Up.Creator = self;
			Up.image_speed = 0;
			Up.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , _IdeMov , "Time Attacking");
			ds_list_add(self.MyMovs , Up.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(12):
		{
			///Normal Egg
			var NormalEgg = instance_create_depth(x + LastScaleXSprite * 12 , y + 4 , depth , objCombatNormalEgg);
			NormalEgg.HorizontalMovement = ScaleXSprite*3.5;
			NormalEgg.VerticalMovement = -1.5;
			NormalEgg.Ide = 12;
			NormalEgg.Power = scrDameDato(Control.MovList , 12 , "Power");
			NormalEgg.KnockbackScaling = scrDameDato(Control.MovList , 12 , "Knockback Scaling");
			NormalEgg.image_xscale = ScaleXSprite;
			NormalEgg.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 12 , "Time Attacking");
			ds_list_add(self.MyMovs , NormalEgg.id);
			ActualMov = ID;
			ProxMovs = 1;
			if (scrDameDato(Control.MovList , 12 , "Is Aerial"))
			{
				ds_list_add(AerialAvaiableList , self.id);
			}
			break;
		}
		case(13):
		{
			///Spike Egg
			var idlocal = 13;
			var SpikeEgg = instance_create_depth(x + LastScaleXSprite * 12 , y + 4 , depth , objCombatSpikeEgg);
			SpikeEgg.HorizontalMovement = ScaleXSprite*3;
			SpikeEgg.VerticalMovement = -1;
			SpikeEgg.Ide = idlocal;
			SpikeEgg.Power = scrDameDato(Control.MovList , idlocal , "Power");
			SpikeEgg.KnockbackScaling = scrDameDato(Control.MovList , idlocal , "Knockback Scaling");
			SpikeEgg.image_xscale = ScaleXSprite;
			SpikeEgg.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , idlocal , "Time Attacking");
			ds_list_add(self.MyMovs , SpikeEgg.id);
			ActualMov = ID;
			ProxMovs = 1;
			if (scrDameDato(Control.MovList , idlocal , "Is Aerial"))
			{
				ds_list_add(AerialAvaiableList , self.id);
			}
			break;
		}
		case(14):
		{
			///Shuriken Egg
			var idlocal = 14;
			var SpikeEgg = instance_create_depth(x + LastScaleXSprite * 12 , y + 4 , depth , objCombatShuriken);
			SpikeEgg.HorizontalMovement = ScaleXSprite*4.5;
			SpikeEgg.VerticalMovement = -1;
			SpikeEgg.Ide = idlocal;
			SpikeEgg.Power = scrDameDato(Control.MovList , idlocal , "Power");
			SpikeEgg.KnockbackScaling = scrDameDato(Control.MovList , idlocal , "Knockback Scaling");
			SpikeEgg.image_xscale = ScaleXSprite;
			SpikeEgg.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , idlocal , "Time Attacking");
			ds_list_add(self.MyMovs , SpikeEgg.id);
			ActualMov = ID;
			ProxMovs = 1;
			if (scrDameDato(Control.MovList , idlocal , "Is Aerial"))
			{
				ds_list_add(AerialAvaiableList , self.id);
			}
			break;
		}
	}
}