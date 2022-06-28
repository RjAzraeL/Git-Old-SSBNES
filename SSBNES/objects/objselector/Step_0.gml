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
		Circle.depth = -4;
	}
	Active = true;
}
if (Control.JumpButtonReleaseActive)
{
	if (scrExiste(Circle))
	{
		Circle.depth = -3;
		if (!place_meeting(x , y , objSelectRoster) and !place_meeting(x , y , objPlayerSquare))
		{
			Circle.obX = Circle.lstX;
			Circle.obY = Circle.lstY;
		}
		else if (place_meeting(x , y , objSelectRoster))
		{
			var Roster = instance_place(x , y , objSelectRoster);
			if (Circle.ActualRoster == noone or Circle.ActualRoster != Roster)
			{
				if (scrExiste(Circle.ActualRoster))
				{
					if (Circle.ActualRoster != Roster)
					{
						Circle.ActualRoster.C[Circle.Position] = noone;
						Circle.ActualRoster.CirclesIn--;
						Circle.ActualRoster = noone;
						Circle.Position = 0;
					}
				}
				Roster.CirclesIn++;
				Circle.ActualRoster = Roster;
				Circle.obX = Roster.x + 14;
				Circle.obY = Roster.y + 12;
				var Listo = false;
				for (var i = 0 ; i < 4 ; i++)
				{
					if (!Listo)
					{
						if (Roster.C[i] == noone)
						{
							Listo = true;
							Roster.C[i] = Circle;
							Circle.Position = i;
						}
					}
				}
				Circle.lstX = Circle.obX;
				Circle.lstY = Circle.obY;
			}
			
			LastRoster = Roster;
			
			with (objSelectorCircle)
			{
				if (scrExiste(ActualRoster) and scrExiste(objSelector.LastRoster))
				{
					if (ActualRoster.id == objSelector.LastRoster.id)
					{
						alarm[2] = 1;
					}
				}
			}
		}
		else if (place_meeting(x , y , objPlayerSquare))
		{
			var Square = instance_place(x , y , objPlayerSquare);
			if (Square.Slot == Circle.Ide)
			{
				Circle.obX = Square.x + 31;
				Circle.obY = Square.y + 47;
				Circle.lstX = Circle.obX;
				Circle.lstY = Circle.obY;
				if (Circle.ActualRoster != noone)
				{
					Circle.ActualRoster.C[Circle.Position] = noone;
					Circle.ActualRoster.CirclesIn--;
					Circle.ActualRoster = noone;
					Circle.Position = 0;
				}
			}
			else
			{
				Circle.obX = Circle.lstX;
				Circle.obY = Circle.lstY;
			}
		}
		Circle.Selected = false;
		Circle = noone;
	}
	Active = false;
}
#endregion