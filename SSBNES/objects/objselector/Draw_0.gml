#region Draw
draw_self();
if (scrExiste(objScreenStage))
{
	scrText(room_width/2 , 132 , objScreenStage.Text , fa_middle , fa_center , Control.Font , c_black , c_white , 32 , 256 , 1 , 1 , 0 , 1);
}
#endregion