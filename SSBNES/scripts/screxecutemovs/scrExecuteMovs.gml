///@arg id
function scrExecuteMovs(ID)
{
	switch(ID)
	{
		case(0):
		{
			//MAR Ground Neutral
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
			///MAR Ground Side Smash
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
			///MAR Ground Smash Down
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
			
			///MAR Ground Smash Down
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
			///MAR Ground Smash Up
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
			///MAR Ground Attack Side
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
			///MAR Ground Attack Down
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
			///MAR Ground Attack Up
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
			///MAR Aerial Neutral
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
			///MAR Aerial Side
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
			///MAR Aerial Back
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
			///MAR Aerial Down
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
			///MAR Aerial Up
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
			///POL Ground Neutral 1
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
			///POL Ground Neutral 2
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
			///POL Ground Neutral 3
			var idlocal = 14;
			var Shuriken = instance_create_depth(x + LastScaleXSprite * 12 , y + 4 , depth , objCombatShuriken);
			Shuriken.HorizontalMovement = ScaleXSprite*4.5;
			Shuriken.VerticalMovement = -1;
			Shuriken.Ide = idlocal;
			Shuriken.Power = scrDameDato(Control.MovList , idlocal , "Power");
			Shuriken.KnockbackScaling = scrDameDato(Control.MovList , idlocal , "Knockback Scaling");
			Shuriken.image_xscale = ScaleXSprite;
			Shuriken.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , idlocal , "Time Attacking");
			ds_list_add(self.MyMovs , Shuriken.id);
			ActualMov = ID;
			ProxMovs = 1;
			if (scrDameDato(Control.MovList , idlocal , "Is Aerial"))
			{
				ds_list_add(AerialAvaiableList , self.id);
			}
			break;
		}
		case(15):
		{
			///POL Ground Neutral 4
			var idlocal = 14;
			var PKey = instance_create_depth(x + LastScaleXSprite * 12 , y + 4 , depth , objCombatKeyPollier);
			PKey.HorizontalMovement = 0;
			PKey.VerticalMovement = 0;
			PKey.Ide = idlocal;
			PKey.Power = scrDameDato(Control.MovList , idlocal , "Power");
			PKey.KnockbackScaling = scrDameDato(Control.MovList , idlocal , "Knockback Scaling");
			PKey.image_xscale = ScaleXSprite;
			PKey.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , idlocal , "Time Attacking");
			ds_list_add(self.MyMovs , PKey.id);
			ActualMov = ID;
			ProxMovs = 1;
			if (scrDameDato(Control.MovList , idlocal , "Is Aerial"))
			{
				ds_list_add(AerialAvaiableList , self.id);
			}
			break;
		}
		case(16):
		{
			///POL Ground Attack Down
			var idlocal = 16;
			TimeAttacking = scrDameDato(Control.MovList , idlocal , "Time Attacking");
			Control.CharacterPollierMov[Position]++;
			if (Control.CharacterPollierMov[Position] > 3)
			{
				Control.CharacterPollierMov[Position] = 0;
			}
			MovGroundNeutral = ds_list_find_value(PollierMovList , Control.CharacterPollierMov[Position]);
			ProxMovs = 0;
			break;
		}
		case(17):
		{
			///POL Ground Attack Up
			AcelerationValue = 4;
			var ChickenFoot = instance_create_depth(x , y , depth-1 , objCombatHitboxNotImageFollower);
			ChickenFoot.sprite_index = sprChMarioFootBangMask;
			ChickenFoot.PowerScale = false;
			ChickenFoot.Ide = ID;
			ChickenFoot.FollowX = LastScaleXSprite;
			ChickenFoot.FollowY = 0;
			ChickenFoot.Power = scrDameDato(Control.MovList , ID , "Power");
			ChickenFoot.KnockbackScaling = scrDameDato(Control.MovList , 17 , "Knockback Scaling");
			ChickenFoot.image_xscale = ScaleXSprite;
			ChickenFoot.Creator = self;
			ChickenFoot.image_speed = 0;
			ChickenFoot.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , ID , "Time Attacking");
			ds_list_add(self.MyMovs , ChickenFoot.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(18):
		{
			///POL Ground Smash Side
			var ChickenBoomerang = instance_create_depth(x + LastScaleXSprite * 18 , y + 4 , depth-1 , objCombatPollierBoomerang);
			PollierBoomerang = ChickenBoomerang;
			ChickenBoomerang.Ide = ID;
			ChickenBoomerang.FollowX = LastScaleXSprite * 18;
			ChickenBoomerang.FollowY = 4;
			ChickenBoomerang.VerticalMovement = 0;
			
			var LowPower = scrDameDato(Control.MovList , 18 , "Power");
			var LoadPorcentage = scrGetTotalPorcentageFromTwoValues(LowPower , SmashMaxPower , SmashActualPower);
			ChickenBoomerang.Power = scrDameDato(Control.MovList , ID , "Power");
			ChickenBoomerang.MinValuePower = 1;
			ChickenBoomerang.MaxValuePower = 5;
			ChickenBoomerang.HorizontalMovement = ScaleXSprite*scrGetTotalValueFromTwoPorcentages(1 , 5 , LoadPorcentage)*2;
			ChickenBoomerang.Range = 48*scrGetTotalValueFromTwoPorcentages(1 , 5 , LoadPorcentage);
			
			ChickenBoomerang.PowerScale = true;
			ChickenBoomerang.KnockbackScaling = scrDameDato(Control.MovList , ID , "Knockback Scaling");
			ChickenBoomerang.image_xscale = ScaleXSprite;
			ChickenBoomerang.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , ID , "Time Attacking");
			ds_list_add(self.MyMovs , ChickenBoomerang.id);
			ProxMovs = 1;
			ActualMov = ID;
			break;
		}
		case(19):
		{
			///POL Ground Smash Down
			AcelerationValue = 0;
			var ChickenFoot = instance_create_depth(x , y , depth-1 , objCombatHitboxNotImageFollower);
			ChickenFoot.sprite_index = sprChPollierGroundSmashDownMask;
			ChickenFoot.PowerScale = false;
			ChickenFoot.Ide = ID;
			ChickenFoot.FollowX = LastScaleXSprite;
			ChickenFoot.FollowY = 0;
			ChickenFoot.Power = scrDameDato(Control.MovList , ID , "Power");
			ChickenFoot.KnockbackScaling = scrDameDato(Control.MovList , 17 , "Knockback Scaling");
			ChickenFoot.image_xscale = ScaleXSprite;
			ChickenFoot.Creator = self;
			ChickenFoot.image_speed = 0;
			ChickenFoot.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , ID , "Time Attacking");
			ds_list_add(self.MyMovs , ChickenFoot.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
	}
}