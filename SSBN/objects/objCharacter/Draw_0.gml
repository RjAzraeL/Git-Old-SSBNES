#region Dibujar
draw_text(x , y - 32 , UpButtonActive);

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
draw_sprite_ext( sprite_index , image_index , x , y , ScaleXSprite , ScaleY , Angle , image_blend , image_alpha );

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

if (scrIsOutside(self))
{
	if (x < 0)
	{
		if (y > 0 and y < room_width)
		{
			draw_sprite(sprArrowOutside , 4 , 8 , y );
		}
		if (y < 0)
		{
			draw_sprite(sprArrowOutside , 3 , 8 , 8 );
		}
		if (y > room_height)
		{
			draw_sprite(sprArrowOutside , 5 , 8 , room_height-8);
		}
	}
	if (x > room_width)
	{
		if (y > 0 and y < room_width)
		{
			draw_sprite(sprArrowOutside , 0 , room_width - 8 , y );
		}
		if (y < 0)
		{
			draw_sprite(sprArrowOutside , 1 , room_width - 8 , 8 );
		}
		if (y > room_height)
		{
			draw_sprite(sprArrowOutside , 7 , room_width - 8 , room_height-8);
		}
	}
	if (y < -32)
	{
		draw_sprite(sprArrowOutside , 2 , x , 8 );
	}
	if (y > room_height + 32)
	{
		draw_sprite(sprArrowOutside , 6 , x , room_height-8 );
	}
}
#endregion