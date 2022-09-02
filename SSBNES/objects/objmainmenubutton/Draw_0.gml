#region Draw
draw_self();
scrSNESText(x - 6 , y + 12 , Text , fa_middle , fa_center , Control.Font , c_black , Color , 32 , 256 , 1 , 1 , 0 , 1);
if (Id == objMainMenu.ActualButton)
{
	scrSNESText(178 , 206 , Desc , fa_middle , fa_center , Control.Font , c_black , c_white , 12 , 176 , 1 , 1 , 0 , 1);
	scrSNESText(228 , 72 , string_hash_to_newline(Extra) , fa_top , fa_left , Control.Font , c_black , c_white , 18 , 146 , .75 , .75 , 0 , 1);
}
#endregion