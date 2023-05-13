#region Dibujar
if (visible)
{
	if (sprite_index == -1)
	{
		sprite_index = sprChSandbagIdle;
	}
	if (Inmune)
	{
		image_alpha = .25;
	
		if (!Platform)
		{
			var InmuneBar = InmuneCooldown / InmuneCooldownFull;
			var ValueHeight = sprite_get_height(sprite_index);
			draw_sprite_part(sprInmuneBar , 0 , 0 , 0 , InmuneBar * 32 , 2 , x - 16 , y + ValueHeight - ValueHeight/3);
		}
	}
	else
	{
		image_alpha = 1;
	}
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

	draw_sprite_ext( sprite_index , image_index , x , y , ScaleXSprite , ScaleY , Angle , image_blend , image_alpha );

	shader_reset();
	#endregion
	if (Control.ShowMask)
	{
		draw_sprite_ext(mask_index , 0 , x , y , ScaleXSprite , ScaleY , Angle , c_white , 0.75);
	}

	if (Platform)
	{
		draw_sprite(sprPlatform , Control.IndexImage2 , x , y + sprite_get_height(SpriteIdle)/2 + 5 );
	
		var PlatformBar = PlatformCooldown / Control.PlatformTimeAvailable;
		draw_sprite_part(sprPlatformBar , 0 , 0 , 0 , PlatformBar * 32 , 2 , x - 16 , y + sprite_get_height(SpriteIdle)/2 - 1);
	}

	if (scrIsOutsideCamera(self))
	{
		var ValueLeft = scrGetCameraWidthLeft();
		var ValueRight = scrGetCameraWidthRight();
		if (x < ValueLeft)
		{
			if (y > 0 and y < room_width)
			{
				draw_sprite(sprArrowOutside , 4 , ValueLeft + 8 , y );
			}
			if (y < 0)
			{
				draw_sprite(sprArrowOutside , 3 , ValueLeft + 8 , 8 );
			}
			if (y > room_height)
			{
				draw_sprite(sprArrowOutside , 5 , ValueLeft + 8 , room_height-8);
			}
		}
		if (x > ValueRight)
		{
			if (y > 0 and y < room_width)
			{
				draw_sprite(sprArrowOutside , 0 , ValueRight - 8 , y );
			}
			if (y < 0)
			{
				draw_sprite(sprArrowOutside , 1 , ValueRight - 8 , 8 );
			}
			if (y > room_height)
			{
				draw_sprite(sprArrowOutside , 7 , ValueRight - 8 , room_height-8);
			}
		}
		if (y < -8)
		{
			draw_sprite(sprArrowOutside , 2 , x , 8 );
		}
		if (y > room_height + 8)
		{
			draw_sprite(sprArrowOutside , 6 , x , room_height-8 );
		}
	}
}
if (object_index == objBot)
{
	draw_set_font(Control.Font);
	draw_text(x - 32 , y - sprite_height/2 - 8 , "mode: "+string(Mode));
	//draw_text(x , y - sprite_height/2 - 24 , "at"+string(HoldAttackButton));
	if (FallingVoid)
	{
		draw_set_font(Control.Font);
		//draw_text(x , y - sprite_height/2 - 8 , "¡");
	}
}
#endregion