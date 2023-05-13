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
		x = objSelector.x;
		y = objSelector.y;
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