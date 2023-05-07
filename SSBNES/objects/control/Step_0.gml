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
StartButtonActive = keyboard_check(StartButton);
StartButtonPressedActive = keyboard_check_pressed(StartButton);


_2LeftButtonActive = keyboard_check(_2LeftButton);
_2LeftButtonPressedActive = keyboard_check_pressed(_2LeftButton);
_2LeftButtonReleasedActive = keyboard_check_released(_2LeftButton);
_2RightButtonActive = keyboard_check(_2RightButton);
_2RightButtonPressedActive = keyboard_check_pressed(_2RightButton);
_2RightButtonReleasedActive = keyboard_check_released(_2RightButton);
_2JumpButtonActive = keyboard_check_pressed(_2JumpButton);
_2JumpButtonReleaseActive = keyboard_check_released(_2JumpButton);
_2JumpButtonPressedActive = keyboard_check_pressed(_2JumpButton);
_2DownButtonActive = keyboard_check(_2DownButton);
_2DownButtonPressedActive = keyboard_check_pressed(_2DownButton);
_2DownButtonReleasedActive = keyboard_check_released(_2DownButton);
_2AttackButtonActive = keyboard_check(_2AttackButton);
_2AttackButtonPressedActive = keyboard_check_pressed(_2AttackButton);
_2AttackButtonReleasedActive = keyboard_check_released(_2AttackButton);
_2UpButtonActive = keyboard_check(_2UpButton);
_2UpButtonReleasedActive = keyboard_check_released(_2UpButton);
_2UpButtonPressedActive = keyboard_check_pressed(_2UpButton);
_2StartButtonActive = keyboard_check(_2StartButton);
_2StartButtonPressedActive = keyboard_check_pressed(_2StartButton);
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
	#region Normal camera
	if (NormalCamera)
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
	}
	else
	{
	}
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
else
{
	if (scrIsBonusLevel())
	{
		#region Camera
		if (scrExiste(objPlayer))
		{
			// Establecer una velocidad de seguimiento de la cámara
			var camera_speed = 0.1;

			// Calcular la posición objetivo de la cámara
			var target_x = objPlayer.x;
			var target_y = objPlayer.y;

			// Calcular la posición actual de la cámara
			var current_x = camera_get_view_x(view_camera[0]) - 16;
			var current_y = camera_get_view_y(view_camera[0]) - 12;
			
			// Interpolar la posición de la cámara hacia la posición objetivo
			current_x += (target_x - current_x) * camera_speed;
			current_y += (target_y - current_y) * camera_speed;
			
			current_x = clamp(current_x , 0 , room_width - 256);
			current_y = clamp(current_y , 0 , room_height - 224);
			
			// Establecer la posición de la cámara
			camera_set_view_pos(view_camera[0], current_x, current_y);

		}
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
}
#endregion
#endregion
#region Bonus
if (scrIsBonusLevel())
{
	if (instance_number(objTarget) == 0)
	{
		audio_stop_sound(Control.IndexMusic);
		MatchEnd = true;
		alarm[4] = 90;
		if (!BonusDeath)
		{
			#region Record
			if (BonusTimeMinute <= RecordMinute)
			{
				if (BonusTimeSecond < RecordSecond)
				{
					scrSound(sndAnnouncerANewRecord);
				}
				else
				{
					scrSound(sndAnnouncerComplete);
				}
			}
			else
			{
				scrSound(sndAnnouncerComplete);
			}
		}
		else
		{
			scrSound(sndAnnouncerFailure);
		}
		#endregion
	}
}
#endregion