#region Battle
#region Buttons
LeftButtonActive = keyboard_check(LeftButton);
LeftButtonPressedActive = keyboard_check_pressed(LeftButton);
LeftButtonReleasedActive = keyboard_check_released(LeftButton);
RightButtonActive = keyboard_check(RightButton);
RightButtonPressedActive = keyboard_check_pressed(RightButton);
RightButtonReleasedActive = keyboard_check_released(RightButton);
JumpButtonActive = keyboard_check_pressed(JumpButton);
JumpButtonReleaseActive = keyboard_check_released(JumpButton);
JumpButtonPressedActive = keyboard_check_pressed(JumpButton);
DownButtonActive = keyboard_check(DownButton);
DownButtonPressedActive = keyboard_check_pressed(DownButton);
DownButtonReleasedActive = keyboard_check_released(DownButton);
AttackButtonActive = keyboard_check(AttackButton);
AttackButtonPressedActive = keyboard_check_pressed(AttackButton);
AttackButtonReleasedActive = keyboard_check_released(AttackButton);
UpButtonActive = keyboard_check(UpButton);
UpButtonReleasedActive = keyboard_check_released(UpButton);
UpButtonPressedActive = keyboard_check_pressed(UpButton);
StartButtonActive = keyboard_check_pressed(StartButton);
#endregion
#region Generic
if (Wait > 0)
{
	Wait--;
}
scrCambiarPantalla(vk_f4);
scrReiniciarJuego(ord("R"));
if (keyboard_check_pressed(ShowColissionButton))
{
	ShowMask = !ShowMask;
}
if (keyboard_check_pressed(ShowColissionMovsButton))
{
	ShowMovsMask = !ShowMovsMask;
}
#endregion
#region Camera
if (BattleLevel)
{
	#region Index
	IndexImage2 += .1;
	if (IndexImage2 > 1.9)
	{
		IndexImage2 = 0;
	}
	#endregion

	#region Change
	#endregion

	#region Camera
	HalfViewWidth = camera_get_view_width(view_camera[0]) / 2;
	HalfViewHeight= camera_get_view_height(view_camera[0]) / 2;

	var Target = noone;
	if (scrExiste(objPlayer))
	{
		Target = objPlayer;
	}

	// Clamp camrea
	if (scrExiste(Target))
	{
		if (Target.x < Limite)
		{
			xx = lerp(xx , 0 , LimiteVelocidad);
		}
		else if (Target.x >= Limite + (Limite/3) and Target.x <= room_width - Limite - (Limite/3))
		{
			xx  = lerp(xx , room_width/2 , LimiteVelocidad*4);
		}
		else if (Target.x > room_width - Limite)
		{
			xx = lerp(xx , room_width , LimiteVelocidad);
		}
		xx = clamp(xx, HalfViewWidth, room_width - HalfViewWidth);
		yy = clamp(yy, HalfViewHeight, room_height - HalfViewHeight);
	}

	// Update camera position
	camera_set_view_pos(view_camera[0], xx - HalfViewWidth, yy - HalfViewHeight);
		
	#endregion

	#region Music
	if (MusicOn and !MusicLoop)
	{
		if (!audio_is_playing(IndexMusic))
		{
			scrMusicLoop(MusicNext);
			MusicNext = sfxKirbyJump;
		}
	}
	#endregion
	
}
#endregion
#endregion