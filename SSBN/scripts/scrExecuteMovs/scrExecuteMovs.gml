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
			Fireball.Power = scrDameDato(Control.MovList , 0 , "Power");
			Fireball.image_xscale = ScaleXSprite;
			Fireball.Creator = self;
			ds_list_add(self.MyMovs , Fireball);
			break;
		}
	}
}