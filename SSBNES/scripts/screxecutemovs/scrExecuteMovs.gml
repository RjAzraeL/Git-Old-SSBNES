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
			scrFreeJump(7.8);
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
			var Box = instance_create_depth(x , y , depth , objPollierBox);
			Box.alarm[0] = 20;
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
			var GroundAttackUp = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			GroundAttackUp.sprite_index = sprChPollierGroundAttackUpMask;
			GroundAttackUp.PowerScale = false;
			GroundAttackUp.Ide = 17;
			GroundAttackUp.FollowX = LastScaleXSprite;
			GroundAttackUp.FollowY = 0;
			GroundAttackUp.Power = scrDameDato(Control.MovList , 17 , "Power");
			GroundAttackUp.KnockbackScaling = scrDameDato(Control.MovList , 17 , "Knockback Scaling");
			GroundAttackUp.image_xscale = ScaleXSprite;
			GroundAttackUp.Creator = self;
			GroundAttackUp.image_speed = 0;
			GroundAttackUp.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , 17 , "Time Attacking");
			ds_list_add(self.MyMovs , GroundAttackUp.id);
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
			var IdeLocal = ID;
			
			///MAR Ground Smash Down
			var GroundSmashDown = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			GroundSmashDown.sprite_index = sprChPollierGroundSmashDownMask;
			GroundSmashDown.Ide = IdeLocal;
			GroundSmashDown.FollowX = LastScaleXSprite;
			GroundSmashDown.FollowY = 0;
			
			var LowPower = scrDameDato(Control.MovList , IdeLocal , "Power");
			var LoadPorcentage = scrGetTotalPorcentageFromTwoValues(LowPower , SmashMaxPower , SmashActualPower);
			
			GroundSmashDown.Power = scrGetTotalValueFromTwoPorcentages(8 , 16 , LoadPorcentage);
			GroundSmashDown.PowerScale = true;
			
			
			GroundSmashDown.MinValuePower = 8;
			GroundSmashDown.MaxValuePower = 16;	
			
			GroundSmashDown.KnockbackScaling = scrDameDato(Control.MovList , IdeLocal , "Knockback Scaling");
			GroundSmashDown.image_xscale = ScaleXSprite;
			GroundSmashDown.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , IdeLocal , "Time Attacking");
			ds_list_add(self.MyMovs , GroundSmashDown.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case (20):
		{
			///POL Ground Smash Up
			var LowPower = scrDameDato(Control.MovList , ID , "Power");
			var LoadPorcentage = scrGetTotalPorcentageFromTwoValues(LowPower , SmashMaxPower , SmashActualPower);
			if (LoadPorcentage >= 60)
			{
				var ChickenRocket = instance_create_depth(x + LastScaleXSprite * 4 , y - 5 , depth-1 , objCombatPollierRocket);
				ChickenRocket.Ide = ID;
				ChickenRocket.FollowX = LastScaleXSprite * 4;
				ChickenRocket.FollowY = -5;
			

				ChickenRocket.Power = scrDameDato(Control.MovList , ID , "Power");
				ChickenRocket.MinValuePower = 8;
				ChickenRocket.MaxValuePower = 16;
				ChickenRocket.VerticalMovement = -6;
				ChickenRocket.Range = 48*scrGetTotalValueFromTwoPorcentages(1 , 5 , LoadPorcentage);
			
				ChickenRocket.PowerScale = true;
				ChickenRocket.KnockbackScaling = scrDameDato(Control.MovList , ID , "Knockback Scaling");
				ChickenRocket.image_xscale = ScaleXSprite;
				ChickenRocket.Creator = self;
				TimeAttacking = scrDameDato(Control.MovList , ID , "Time Attacking");
				ds_list_add(self.MyMovs , ChickenRocket.id);
				ProxMovs = 1; 
			}
			ActualMov = ID;
			break;
		}
		case(21):
		{
			///POL Ground Attack Side
			AcelerationValue = 3;
			var FootBang = instance_create_depth(x , y , depth-1 , objCombatHitboxNotImageFollower);
			FootBang.sprite_index = sprChPollierGroundAttackSideMask;
			FootBang.PowerScale = false;
			FootBang.Ide = ID;
			FootBang.FollowX = LastScaleXSprite;
			FootBang.FollowY = 0;
			FootBang.Power = scrDameDato(Control.MovList , ID , "Power");
			FootBang.KnockbackScaling = scrDameDato(Control.MovList , ID , "Knockback Scaling");
			FootBang.image_xscale = ScaleXSprite;
			FootBang.Creator = self;
			FootBang.image_speed = 0;
			FootBang.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , ID , "Time Attacking");
			ds_list_add(self.MyMovs , FootBang.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(22):
		{
			///POL Aerial Neutral
			var Parry = instance_create_depth(x , y , depth-1 , objCombatHitboxNotImageFollower);
			Parry.DoDamage = false;
			Parry.sprite_index = SpriteAttackAerialNeutral;
			Parry.PowerScale = false;
			Parry.Ide = ID;
			Parry.FollowX = LastScaleXSprite;
			Parry.FollowY = 0;
			Parry.Power = scrDameDato(Control.MovList , ID , "Power");
			Parry.KnockbackScaling = scrDameDato(Control.MovList , ID , "Knockback Scaling");
			Parry.image_xscale = ScaleXSprite;
			Parry.Creator = self;
			Parry.image_speed = 0;
			Parry.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , ID , "Time Attacking");
			ParryPollier = round(TimeAttacking*1.25);
			ds_list_add(self.MyMovs , Parry.id);
			ActualMov = ID;
			ProxMovs = 0;
			break;
		}
		case(23):
		{
			///POL Aerial Side
			AcelerationValue = 5;
			///MAR Aerial Side
			var Highpunch = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			Highpunch.sprite_index = sprChPollierAerialSideMask;
			Highpunch.PowerScale = false;
			var _IdeMov = 23;
			Highpunch.Ide = 23;
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
		case(24):
		{
			///POL Aerial Back
			AcelerationValue = 2;
			scrFreeJump(1);
			///MAR Aerial Side
			var ThunderEgg = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			ThunderEgg.sprite_index = sprite_index;
			ThunderEgg.DoDamage = false;
			ThunderEgg.PowerScale = false;
			var _IdeMov = 24;
			ThunderEgg.Ide = 24;
			ThunderEgg.FollowX = LastScaleXSprite;
			ThunderEgg.FollowY = 0;
			ThunderEgg.Power = scrDameDato(Control.MovList , _IdeMov , "Power");
			ThunderEgg.KnockbackScaling = scrDameDato(Control.MovList , _IdeMov , "Knockback Scaling");
			ThunderEgg.image_xscale = ScaleXSprite;
			ThunderEgg.Creator = self;
			ThunderEgg.image_speed = 0;
			ThunderEgg.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , _IdeMov , "Time Attacking");
			ds_list_add(self.MyMovs , ThunderEgg.id);
			ActualMov = ID;
			ProxMovs = 0;
			
			var ThunderEgg2 = instance_create_depth(x , y , depth-1 , objCombatThunderlEgg);
			ThunderEgg2.HorizontalMovement = -ScaleXSprite*3;
			ThunderEgg2.VerticalMovement = -1;
			ThunderEgg2.Ide = 24;
			ThunderEgg2.DoDamage = false;
			ThunderEgg2.Power = scrDameDato(Control.MovList , 24 , "Power");
			ThunderEgg2.KnockbackScaling = scrDameDato(Control.MovList , 24 , "Knockback Scaling");
			ThunderEgg2.image_xscale = ScaleXSprite;
			ThunderEgg2.Creator = self;
			TimeAttacking = scrDameDato(Control.MovList , 24 , "Time Attacking");
			ds_list_add(self.MyMovs , ThunderEgg2.id);
			break;
		}
		case(25):
		{
			///POL Aerial Back
			scrFreeJump(2);
			///MAR Aerial Side
			var Throw = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			Throw.sprite_index = sprite_index;
			Throw.DoDamage = false;
			Throw.PowerScale = false;
			var _IdeMov = 25;
			Throw.Ide = 25;
			Throw.FollowX = LastScaleXSprite;
			Throw.FollowY = 0;
			Throw.Power = scrDameDato(Control.MovList , _IdeMov , "Power");
			Throw.KnockbackScaling = scrDameDato(Control.MovList , _IdeMov , "Knockback Scaling");
			Throw.image_xscale = ScaleXSprite;
			Throw.Creator = self;
			Throw.image_speed = 0;
			Throw.image_index = 0;
			TimeAttacking = scrDameDato(Control.MovList , _IdeMov , "Time Attacking");
			ds_list_add(self.MyMovs , Throw.id);
			ActualMov = ID;
			ProxMovs = 0;
			
			var TNT = instance_create_depth(x , y , depth-1 , objCombatTNTBox);
			TNT.HorizontalMovement = HorizontalMovement;
			TNT.VerticalMovement = 1;
			TNT.Ide = 25;
			TNT.DoDamage = false;
			TNT.Power = scrDameDato(Control.MovList , 25, "Power");
			TNT.KnockbackScaling = scrDameDato(Control.MovList , 25 , "Knockback Scaling");
			TNT.image_xscale = ScaleXSprite;
			TNT.Creator = self;
			ds_list_add(self.MyMovs , TNT.id);
			break;
		}
		case(26):
		{
			///MAR Aerial Up
			scrFreeJump(6.5);
			var Up = instance_create_depth(x , y , depth-1 , objCombatHitboxImageFollower);
			var SpringBoard = instance_create_depth(x , y , depth-1 , objCombatPollierSpringboard);
			SpringBoard.Creator = self;
			Up.sprite_index = sprChPollierAerialUp;
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
	}
}