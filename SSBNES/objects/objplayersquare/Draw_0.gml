#region Dibujar
draw_self();
if (scrExiste(ButtonChildren) and Ide != 3)
{
	if (ButtonChildren.ActualRoster != noone)
	{
		sprRosterImage += sprRosterSpeed;
		if (sprRosterImage > sprite_get_number(ButtonChildren.ActualRoster.sprIde))
		{
			sprRosterImage = 0;
		}
		IdeCharacter = ButtonChildren.ActualRoster.ChrIde;
		
		#region Shader
		
		shader_set(shdColorChange);
		//0
		shader_set_uniform_f(shader_get_uniform(shdColorChange, "rep1"), ds_list_find_value(ColorBase[0] , 0) , ds_list_find_value(ColorBase[0] , 1) , ds_list_find_value(ColorBase[0] , 2));
		shader_set_uniform_f(shader_get_uniform(shdColorChange, "new1"), ds_list_find_value(ColorSkin[0] , 0) , ds_list_find_value(ColorSkin[0] , 1) , ds_list_find_value(ColorSkin[0] , 2));
		//1
		shader_set_uniform_f(shader_get_uniform(shdColorChange, "rep2"), ds_list_find_value(ColorBase[1] , 0) , ds_list_find_value(ColorBase[1] , 1) , ds_list_find_value(ColorBase[1] , 2));
		shader_set_uniform_f(shader_get_uniform(shdColorChange, "new2"), ds_list_find_value(ColorSkin[1] , 0) , ds_list_find_value(ColorSkin[1] , 1) , ds_list_find_value(ColorSkin[1] , 2));
		//2
		shader_set_uniform_f(shader_get_uniform(shdColorChange, "rep3"), ds_list_find_value(ColorBase[2] , 0) , ds_list_find_value(ColorBase[2] , 1) , ds_list_find_value(ColorBase[2] , 2));
		shader_set_uniform_f(shader_get_uniform(shdColorChange, "new3"), ds_list_find_value(ColorSkin[2] , 0) , ds_list_find_value(ColorSkin[2] , 1) , ds_list_find_value(ColorSkin[2] , 2));

		//4
		shader_set_uniform_f(shader_get_uniform(shdColorChange, "rep4"), ds_list_find_value(ColorBase[3] , 0) , ds_list_find_value(ColorBase[3] , 1) , ds_list_find_value(ColorBase[3] , 2));
		shader_set_uniform_f(shader_get_uniform(shdColorChange, "new4"), ds_list_find_value(ColorSkin[3] , 0) , ds_list_find_value(ColorSkin[3] , 1) , ds_list_find_value(ColorSkin[3] , 2));

		draw_sprite(ButtonChildren.ActualRoster.sprIde , sprRosterImage , x+31 , y+37);

		shader_reset();
		
		#endregion
		
		scrText(x + 31 , y + 83 , ButtonChildren.ActualRoster.namIde , fa_middle , fa_center , Control.Font , c_black , c_white , 32 , 256 , .75 , .75 , 0 , 1);
	}
}
#endregion