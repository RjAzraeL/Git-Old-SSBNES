#region Movement
HorMov = Control.RightButtonActive - Control.LeftButtonActive;
VerMov = Control.DownButtonActive - Control.UpButtonActive;


x += HorMov * Spd;
y += VerMov * Spd;

x = clamp(x , 58 , room_width-58);
y = clamp(y , 8 , room_height-8);
#endregion
#region Circle
image_index = 0;
if (Active)
{
	image_index = 1;
	if (scrExiste(Circle))
	{
		Circle.x = x;
		Circle.y = y;
	}
}

if (Control.JumpButtonPressedActive and place_meeting(x , y , objSelectorCircle))
{
	Circle = instance_place(x , y , objSelectorCircle);
	if (scrExiste(Circle))
	{
		Circle.Selected = true;
	}
	Active = true;
}
if (Control.JumpButtonReleaseActive)
{
	if (scrExiste(Circle))
	{
		if (!place_meeting(x , y , objSelectRoster) and !place_meeting(x , y , objPlayerSquare))
		{
			Circle.obX = Circle.lstX;
			Circle.obY = Circle.lstY;
		}
		else if (place_meeting(x , y , objSelectRoster))
		{
			var Roster = instance_place(x , y , objSelectRoster);
			Circle.obX = Roster.x + 14;
			Circle.obY = Roster.y + 12;
			Circle.lstX = Circle.obX;
			Circle.lstY = Circle.obY;
		}
		else if (place_meeting(x , y , objPlayerSquare))
		{
			var Square = instance_place(x , y , objPlayerSquare);
			Circle.obX = Square.x + 31;
			Circle.obY = Square.y + 47;
			Circle.lstX = Circle.obX;
			Circle.lstY = Circle.obY;
		}
		Circle.Selected = false;
		Circle = noone;
	}
	Active = false;
}
#endregion