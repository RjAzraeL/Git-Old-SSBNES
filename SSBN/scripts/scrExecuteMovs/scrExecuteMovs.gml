///@arg id
function scrExecuteMovs(ID)
{
	switch(ID)
	{
		case(0):
		{
			///Fireball
			if (!scrExiste(objCombatFireball))
			{
				var Fireball = instance_create_depth(x , y , depth , objCombatFireball);
				Fireball.HorizontalMovement = ScaleXSprite*3;
				Fireball.VerticalMovement = -1;
				Fireball.Power = scrDameDato(Control.MovList , 0 , "Power");
				Fireball.image_xscale = ScaleXSprite;
				Fireball.Creator = self;
			}
			break;
		}
	}
}