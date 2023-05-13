#region Objetive
if (!Selected)
{
	x = lerp(x , obX , .1);
	y = lerp(y , obY , .1);
}
else
{
	if (scrExiste(objSelector))
	{
		x = lerp(x , objSelector.x , 1);
		y = lerp(y , objSelector.y , 1);
	}
}
#endregion
#region Visible
visible = true;
if (image_index == 3)
{
	visible = false;
}
#endregion