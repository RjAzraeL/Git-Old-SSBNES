#region Dibujar
if (sprite_index == -1)
{
	sprite_index = sprChSandbagIdle;
}
if (Inmune)
{
	image_alpha = .5;
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

draw_text(160 , 64 , place_meeting(x , y + 1 , objBlockSlope45));

if (Platform)
{
	draw_sprite(sprPlatform , Control.IndexImage2 , x , y + sprite_get_height(SpriteIdle)/2 + 5 );
}
#endregion