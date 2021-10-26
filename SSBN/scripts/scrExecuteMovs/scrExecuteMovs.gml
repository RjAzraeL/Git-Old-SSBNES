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
			Firepunch.Power = scrDameDato(Control.MovList , 1 , "Power");
			Firepunch.KnockbackScaling = scrDameDato(Control.MovList , 1 , "Knockback Scaling");
			Firepunch.image_xscale = ScaleXSprite;
			Firepunch.Creator = self;
			ds_list_add(self.MyMovs , Firepunch);
			break;
		}
	}
}