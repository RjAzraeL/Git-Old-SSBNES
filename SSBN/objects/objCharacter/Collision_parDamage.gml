#region Damage
if (other.Creator != self and ds_list_find_index(BlowsReceivedList , other.id) == -1 and Inmune == 0)
{
	LifePorcentage += other.Power;
	ds_list_add(BlowsReceivedList , other.id);
	var PostDamage = LifePorcentage;
	var NewKnockbackScaling = other.KnockbackScaling/100;
	var RVar = 1;
	
	var ec0 = (PostDamage / 10);
	var ec1 = (PostDamage * other.Power) / 20;
	var ec2 = (200 / (Weight + 100)) * 1.4;
	var PowerFormula = ( ( ( ( ( ec0 + ec1 ) * ec2 ) + 18) * NewKnockbackScaling ) + other.Power ) * RVar;
	
	LastDamage = PowerFormula/10;
	Damaged = round(PowerFormula/1.5);
	var Dir = 0;
	if (x < other.x)
	{
		Dir = 100 + PowerFormula/10;
		SavedHorizontalDirection = -1;
	}
	else
	{
		Dir = 80 - PowerFormula/10;;
		SavedHorizontalDirection = 1;
	}
	HorizontalDirection = lengthdir_x( LastDamage , Dir);
	VerticalMovement = lengthdir_y( LastDamage  , Dir);
	
	if (other.Destroyable)
	{
		instance_destroy(other);
	}
}
#endregion