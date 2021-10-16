#region Buttons
LeftButtonActive = keyboard_check(LeftButton);
LeftButtonPressedActive = keyboard_check_pressed(LeftButton);
RightButtonActive = keyboard_check(RightButton);
RightButtonPressedActive = keyboard_check_pressed(RightButton);
JumpButtonActive = keyboard_check_pressed(JumpButton);
DownButtonActive = keyboard_check(DownButton);
DownButtonPressedActive = keyboard_check_pressed(DownButton);
DownButtonReleasedActive = keyboard_check_released(DownButton);
#endregion

#region Generic
scrCambiarPantalla(vk_f4);
scrReiniciarJuego(ord("R"));
#endregion

#region Camera
HalfViewWidth = camera_get_view_width(view_camera[0]) / 2;
HalfViewHeight= camera_get_view_height(view_camera[0]) / 2;
		
// Clamp camrea
if (scrExiste(objCharacter))
{
	if (objCharacter.x < Limite)
	{
		xx = lerp(xx , 0 , LimiteVelocidad);
	}
	else if (objCharacter.x >= Limite + (Limite/2) and objCharacter.x <= room_width - Limite - (Limite/2))
	{
		xx  = lerp(xx , room_width/2 , LimiteVelocidad);
	}
	else if (objCharacter.x > room_width - Limite)
	{
		xx = lerp(xx , room_width , LimiteVelocidad);
	}
	xx = clamp(xx, HalfViewWidth, room_width - HalfViewWidth);
	yy = clamp(yy, HalfViewHeight, room_height - HalfViewHeight);
}

// Update camera position
camera_set_view_pos(view_camera[0], xx - HalfViewWidth, yy - HalfViewHeight);
		
#endregion