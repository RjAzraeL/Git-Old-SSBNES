#region Form
if (place_meeting(x , y , objPlayerSquare))
{
	var Square = instance_place(x , y , objPlayerSquare);
	if (scrExiste(Square))
	{
		SquareOrigin = Square;
		alarm[0] = 1;
	}
}
#endregion