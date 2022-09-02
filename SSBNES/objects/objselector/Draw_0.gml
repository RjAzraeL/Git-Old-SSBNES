#region Draw
if (scrExiste(objScreenStage))
{
	scrText(room_width/2 , 120 , string_hash_to_newline(objScreenStage.Text) , fa_middle , fa_center , Control.Font , c_black , c_white , 8 , 512 , 1 , 1 , 0 , 1);
}
draw_self();
#endregion