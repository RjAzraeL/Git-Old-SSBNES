#region Damage
if (other.Creator != self and ds_list_find_index(BlowsReceivedList , other.id) == -1 and Inmune == 0 and CooldownDamage == 0)
{
	LifePorcentage += round(other.Power);
	ds_list_add(BlowsReceivedList , other.id);
	CooldownDamage = 5;
	RootAttack = false;
	Attacking = false;
	TimeAttacking = 0;
	scrCleanMoveQueue(self);
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
		var Dir = 0;
		var AngleDireference = LifePorcentage;
		if (AngleDireference >= 60)
		{
			AngleDireference = 60;
		}
		Dir = point_direction(other.x , other.y , x , y);
		LastDirectionDamaged = Dir;
		SavedHorizontalMovement = lengthdir_x( 3 + (LastDamage/4) , Dir);
		VerticalMovement = lengthdir_y( 3 + (LastDamage/2)  , Dir);
		MovementPostDamage = SavedHorizontalMovement;
	}
	else
	{
		Damaged = 5;
		var Dir = 0;
		Dir = point_direction(other.x , other.y , x , y);
		LastDirectionDamaged = Dir;
		SavedHorizontalMovement = lengthdir_x( 3 , Dir);
		VerticalMovement = lengthdir_y( 3  , Dir);
		MovementPostDamage = SavedHorizontalMovement;
	}
	
	if (other.Destroyable)
	{
		instance_destroy(other);
	}
}
#endregion