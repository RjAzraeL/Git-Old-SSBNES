#region Damage
if (other.Creator != self and ds_list_find_index(BlowsReceivedList , other.id) == -1 and Inmune == 0 and CooldownDamage == 0)
{
	LifePorcentage += round(other.Power);
	ds_list_add(BlowsReceivedList , other.id);
	CooldownDamage = 5;
	if (scrDameDato(Control.MovList , other.Ide , "Can Knockback"))
	{
		var PostDamage = LifePorcentage;
		var NewKnockbackScaling = other.KnockbackScaling/100;
		var RVar = 1;
	
		var ec0 = (PostDamage / 10);
		var ec1 = (PostDamage * other.Power) / 20;
		var ec2 = (200 / (Weight + 100)) * 1.4;
		var PowerFormula = ( ( ( ( ( ec0 + ec1 ) * ec2 ) + 18) * NewKnockbackScaling ) + other.Power ) * RVar;
	
		LastDamage = PowerFormula/10;
		Damaged = round(PowerFormula/10);
		var Dir = 0;
		var AngleDireference = LifePorcentage;
		if (AngleDireference >= 60)
		{
			AngleDireference = 60;
		}
		/*if (other.Creator.ScaleXSprite > 0)
		{
			Dir = 135;
			SavedHorizontalDirection = -1;
		}
		else
		{
			Dir = 45;
			SavedHorizontalDirection = 1;
		}*/
		Dir = point_direction(other.x , other.y , x , y);
		LastDirectionDamaged = Dir;
		SavedHorizontalMovement = lengthdir_x( LastDamage/4 , Dir);
		VerticalMovement = lengthdir_y( LastDamage/2  , Dir);
	}
	else
	{
		Damaged = 5;
		var Dir = 0;
		if (x < other.x)
		{
			Dir = 100;
			SavedHorizontalDirection = -1;
		}
		else
		{
			Dir = 80;
			SavedHorizontalDirection = 1;
		}
		SavedHorizontalMovement = lengthdir_x( 3 , Dir);
		VerticalMovement = lengthdir_y( 3  , Dir);
	}
	if (other.Destroyable)
	{
		instance_destroy(other);
	}
}
#endregion