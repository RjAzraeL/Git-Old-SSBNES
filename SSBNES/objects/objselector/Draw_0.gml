#region Draw
if (room == rm03Versus)
{
	for (var j = 0 ; j <= Control.DefaultLifeValue ; j++)
	{
		draw_sprite_ext(sprHudIcons , 0 , 123 + (j * 10) , 18 , 1 , 1 , 0 , c_white , 1);
	}
}
if (room == rmBn0)
{
	if (Control.RecordMinute != -1) 
	{
		scrText(scrX() + 74 , scrY() + 206 ,  string_upper("Record\n" + string_replace_all(string_format(Control.RecordMinute,2,0) , " " , "0") + ":" + string_replace_all(string_format(Control.RecordSecond,2,0) , " " , "0")) , fa_middle , fa_left , Control.Font , c_black , c_yellow , 16 , 48 , 1 , 1 , 0 , 1);
	}
	else
	{
		scrText(scrX() + 74 , scrY() + 224 , Language.Text_b0t3 , fa_middle , fa_left , Control.Font , c_black , c_yellow , 32 , room_width , 1 , 1 , 0 , 1);
	}
}

if (scrExiste(objScreenStage))
{
	scrText(room_width/2 , 120 , string_hash_to_newline(objScreenStage.Text) , fa_middle , fa_center , Control.Font , c_black , c_white , 8 , 512 , 1 , 1 , 0 , 1);
}
draw_self();
#endregion