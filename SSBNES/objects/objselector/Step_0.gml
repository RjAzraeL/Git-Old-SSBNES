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
	/*
	if (scrExiste(Circle))
	{
		Circle.x = x;
		Circle.y = y;
	}
	*/
}

if (Control.Wait == 0)
{
	if (Control.JumpButtonPressedActive and place_meeting(x , y , objOptionBar))
	{
		scrSound(sfxButtonOk);
		Control.DefaultLifeValue++;
		if (Control.DefaultLifeValue > 5)
		{
			Control.DefaultLifeValue = 0;
		}
	}
	if (Control.JumpButtonPressedActive and place_meeting(x , y , objPlayerSquare))
	{
		if (place_meeting(x , y , objPlayerSquare2) and room != rmBn0)
		{
			var Square = instance_place(x , y , objPlayerSquare);
			if (!place_meeting(x , y , objSelectorCircle) or Square.Ide == 3)
			{
				if (scrExiste(Square))
				{
					Square.Ide++;
					if (Square.Slot == 0 and Square.Ide == 1)
					{
						Square.Ide = 2;
					}
					if (Square.Slot == 1 and Square.Ide == 0)
					{
						Square.Ide = 1;
					}
					if (Square.Ide > 3)
					{
						if (Square.Slot == 0)
						{
							Square.Ide = 0;
						}
						if (Square.Slot == 1)
						{
							Square.Ide = 1;
						}
						if (Square.Slot >= 2)
						{
							Square.Ide = 2;
						}
					}
				}
			}
		}
		else
		{
			if (!place_meeting(x, y , objSelectorCircle))
			{
				var Square = instance_place(x , y , objPlayerSquare);
				if (scrExiste(Square))
				{
					Square.IdeSkin = scrChangeSkin(Square.IdeSkin , Square.IdeSkinTope , Square.IdeCharacter , Square , Square.Slot);
				}
			}
		}
	}
	if (Control.AttackButtonPressedActive and Control.Wait == 0)
	{
		if (room == rm03Versus)
		{
			Control.Wait = 5;
			room_goto(rm02Menu);
		}
		else if (room == rm04Stage)
		{
			Control.Wait = 5;
			room_goto(rm03Versus);
		}
		else if (room == rmBn0)
		{
			Control.Wait = 5;
			room_goto(rm02Menu);
		}
	}
	if (Control.JumpButtonPressedActive and scrExiste(Circle))
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
			if (Roster.Ide >= 37 and Roster.Ide <= 39)
			{
				Circle.obX = Circle.lstX;
				Circle.obY = Circle.lstY;
			}
			else
			{
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
					Circle.obX = Roster.x;
					Circle.obY = Roster.y;
					Circle.SquareOrigin.IdeSkin = scrResetSkin(Roster.ChrIde,Circle.SquareOrigin,Circle.Ide);
					scrVoice(scrDameDato(Control.CharacterList, Roster.ChrIde, "Announcer Name"));
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
		}
		else if (place_meeting(x , y , objPlayerSquare))
		{
			var Square = instance_place(x , y , objPlayerSquare);
			if (Square.Slot == Circle.Ide)
			{
				Square.IdeSkin = scrResetSkin(0,Square,Square.Slot);
				Square.IdeCharacter = 0;
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
		Active = false;
	}
	else if (Control.JumpButtonPressedActive and place_meeting(x , y , objSelectorCircle))
	{
		Circle = instance_place(x , y , objSelectorCircle);
		if (scrExiste(Circle))
		{
			if (Circle.image_index != 3)
			{
				Circle.Selected = true;
				Circle.depth = -4;
				Active = true;
			}
			else
			{
				Circle = noone;
			}
		}
	}
	if (Control.JumpButtonReleaseActive)
	{
		if (place_meeting(x , y , objReadyBar))
		{
			var Ready = instance_place(x , y , objReadyBar);
			if (Ready.visible)
			{
				for (var i = 0 ; i < 4 ; i++)
				{
					var Square = instance_find(objPlayerSquare , i);
					if (scrExiste(Square))
					{
						if (Square.IdeCharacter == 0)
						{
							Control.CharacterId[Square.Slot] = choose(1,7);//irandom_range(1 , ds_list_size(Control.CharacterList)-1);
							Square.IdeCharacter = Control.CharacterId[Square.Slot];
							Square.Random = true;
						}
					}
				}
				for (var i = 0 ; i < 4 ; i++)
				{
					var Square = instance_find(objPlayerSquare , i);
					if (scrExiste(Square))
					{
						if (Square.Random)
						{
							Square.Random = false;
							Square.IdeSkin = scrChangeSkin(-1 , Square.IdeSkinTope , Square.IdeCharacter , Square , Square.Slot);
						}
					}
				}
				if (room == rm03Versus)
				{
					room_goto(rm04Stage);
				}
				else if (room == rmBn0)
				{
					room_goto(rmBn1Mario);
				}
			}
		}
	}
}
#endregion