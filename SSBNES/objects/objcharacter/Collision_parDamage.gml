#region Damage
if (y < room_height and other.Creator != self and (ds_list_find_index(BlowsReceivedList , other.id) == -1 or other.MultipleHits) and Inmune == 0 and CooldownDamage == 0 and other.DoDamage)
{
	if (ParryPollier > 0)
	{
		///POL Ground Attack Up
		scrCleanMoveQueue(self);
		var Ide = 17;
		scrAddMov(Ide , 1 , self);
		Attacking = true;
		AttackingHold = scrDameDato(Control.MovList , Ide , "Is Smash");
		AttackingHoldIndex = 0;
		SmashMaxPower = scrDameDato(Control.MovList , Ide , "Max Power");
		SmashGrownPower = .1;
		SpriteAttacking = SpriteAttackGroundUp;
		sprite_index = SpriteAttacking;
		SmashActualPower = scrDameDato(Control.MovList , Ide , "Power");
		SpriteAttackingSpeed = scrDameDato(Control.MovList , Ide , "Animation Speed");
		image_speed = SpriteAttackingSpeed;
		image_index = 0;
		RootAttack = scrDameDato(Control.MovList , Ide , "Root");
		CooldownJump = 0;
	}
	else
	{
		#region Revenge
		if (self.object_index == objBot and RevengeTime == 0)
		{
			RevengeEntity = other.Creator;
			switch (Style)
			{
				case("Brute"):
				{
					RevengeTime = 240;
					break;
				}
				case("Finisher"):
				{
					RevengeTime = 140;
					break;
				}
				default:
				{
					RevengeTime = 90;
					break;
				}
			}
		}
		#endregion
		RootAttack = false;
		Attacking = false;
		TimeAttacking = 0;
		TimeHolding = 0;
		scrCleanMoveQueue(self);
		if (!other.CanGrab)
		{
			LifePorcentage += round(other.Power);
			if (other.object_index != objCombatDamage)
			{
				ds_list_add(BlowsReceivedList , other.id);
			}
			CooldownDamage = 5;
			if (scrDameDato(Control.MovList , other.Ide , "Can Knockback"))
			{
				var PostDamage = LifePorcentage;
				var NewKnockbackScaling = other.KnockbackScaling/100;
				var RVar = 1;
	
				var ec0 = (PostDamage / 8);
				var ec1 = (PostDamage * other.Power) / 20;
				var ec2 = (200 / (Weight + 100)) * 1.4;
				var PowerFormula = ( ( ( ( ( ec0 + ec1 ) * ec2 ) + 18) * NewKnockbackScaling ) + other.Power ) * RVar;
				LastDamage = PowerFormula/8;
				Damaged = round(PowerFormula/8);
				CooldownDamage = Damaged;
				var Dir = 0;
				var AngleDireference = LifePorcentage;
				if (AngleDireference >= 60)
				{
					AngleDireference = 60;
				}
				Dir = point_direction(other.x , other.y , x , y);
				LastDirectionDamaged = Dir;
				VerticalMovement = lengthdir_y( 3 + (LastDamage/2)  , Dir);
				if scrExiste(other.Creator)
				{
					SavedHorizontalMovement = lengthdir_x( 3 + (LastDamage/12) , Dir) + round(other.Creator.HorizontalMovement);
				}
				else
				{
					SavedHorizontalMovement = lengthdir_x( 2 + (LastDamage/12) , 90);
					VerticalMovement = lengthdir_y( 4 + (LastDamage/2)  , 90);
				}
				
				//SavedHorizontalMovement = lengthdir_x( 3 + (LastDamage/16) , Dir) + round(other.Creator.HorizontalMovement/2);
				//VerticalMovement = lengthdir_y( 3 + (LastDamage/4)  , Dir);
				MovementPostDamage = SavedHorizontalMovement;
				_direction = Dir;
				_speed = LastDamage;
				if (LifePorcentage >= 80)
				{
					scrSound(sfxStrongHurt);
				}
				else
				{
					scrSound(sfxHurt);
				}
			}
			else
			{
				Damaged = 5;
				var Dir = 0;
				Dir = point_direction(other.x , other.y , x , y);
				LastDirectionDamaged = Dir;
				SavedHorizontalMovement = lengthdir_x( 1 , Dir);
				VerticalMovement = lengthdir_y( 1  , Dir);
				MovementPostDamage = SavedHorizontalMovement;
				scrSound(sfxHurt);
			}
			if (other.Ide == 11)
			{
				Damaged = 9;
				HorizontalMovement = 0;
				SavedHorizontalMovement = 0;
				VerticalMovement = -7.8;
			}
		}
		else
		{
			if (Damaged == 0)
			{
				scrSound(sfxHurt);
				Damaged = 5;
				CooldownDamage = 5;
				LifePorcentage += round(other.Power);
				SavedHorizontalMovement = lengthdir_x( 1 , 90);
				VerticalMovement = lengthdir_y( 1  , 90);
			}
		}
		TimeInShock = round(Damaged * 1.25);
		if (other.Destroyable)
		{
			instance_destroy(other);
		}
	}
}
#endregion