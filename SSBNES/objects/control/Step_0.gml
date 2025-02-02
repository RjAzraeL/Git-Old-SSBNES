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
SelectButtonActive = keyboard_check(SelectButton);
SelectButtonPressedActive = keyboard_check_pressed(SelectButton);

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
_2SelectButtonActive = keyboard_check(_2SelectButton);
_2SelectButtonPressedActive = keyboard_check_pressed(_2SelectButton);
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
if ((BattleLevel or scrIsBonusLevel()) and SelectButtonPressedActive)
{
	ShowHUD = !ShowHUD;
}
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
		else
		{
			var Target = noone;
			var CantidadDeRivales = instance_number(objCharacter);
			var TargetLocal = noone;
			for (var i = 0 ; i < CantidadDeRivales ; i++)
			{
				TargetLocal = instance_find(objCharacter , i);
				if (Target == noone)
				{
					Target = TargetLocal;
				}
				else
				{
					if (CharacterPorcentage[TargetLocal.Position] > CharacterPorcentage[Target.Position])
					{
						Target = TargetLocal;
					}
				}
			}
		}

		// Clamp camera
		var CantidadEnXIzq = 0;
        var CantidadEnXMed = 0;
        var CantidadEnXDer = 0;
		var CantidadDeRivales = instance_number(objCharacter);
		var TargetLocal = noone;
		var xx_local = room_width/2;
        for (var i = 0 ; i < CantidadDeRivales ; i++)
        {
            TargetLocal = instance_find(objCharacter , i);
            if (TargetLocal.x < Limite)
            {
                CantidadEnXIzq++;
            }
            else if (TargetLocal.x >= Limite + (Limite/6) and TargetLocal.x <= room_width - Limite - (Limite/6))
            {
                CantidadEnXMed++;
            }
            else if (TargetLocal.x > room_width - Limite)
            {
                CantidadEnXDer++;
            }
        }

        // Clamp camrea
        if (scrExiste(Target))
        {
            if (CantidadEnXIzq > CantidadEnXDer + CantidadEnXMed)
            {
                xx = lerp(xx , 0 , LimiteVelocidad);
            }
            else if (CantidadEnXDer == CantidadEnXIzq)
            {
                xx  = lerp(xx , room_width/2 , LimiteVelocidad*4);
            }
            else if (CantidadEnXDer > CantidadEnXIzq + CantidadEnXMed)
            {
                xx = lerp(xx , room_width , LimiteVelocidad);
            }
            xx = clamp(xx, HalfViewWidth, room_width - HalfViewWidth);
            yy = clamp(yy, HalfViewHeight, room_height - HalfViewHeight);
        }

		// Update camera position
		if (ReadyTime == 0)
		{
			camera_set_view_pos(view_camera[0], xx - HalfViewWidth, yy - HalfViewHeight);
		}
		else
		{
			camera_set_view_pos(view_camera[0], xx_local - HalfViewWidth, yy - HalfViewHeight);
		}
		
		#endregion
	}
	else
	{
	}
	#endregion
	#region Music
	if (MusicOn and !MusicLoop and !NoMusic)
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
		if (scrExiste(objCharacter))
		{
			// Establecer una velocidad de seguimiento de la cámara
			var camera_speed = 0.1;

			// Calcular la posición objetivo de la cámara
			var target_x = objCharacter.x;
			var target_y = objCharacter.y;

			// Calcular la posición actual de la cámara
			var current_x = camera_get_view_x(view_camera[0]) - 16;
			var current_y = camera_get_view_y(view_camera[0]) - 12;
			
			// Interpolar la posición de la cámara hacia la posición objetivo
			current_x += (target_x - current_x) * camera_speed;
			current_y += (target_y - current_y) * camera_speed;
			
			current_x = clamp(current_x , 0 , room_width - 256);
			current_y = clamp(current_y , 0 , room_height - 224);
			
			// Establecer la posición de la cámara
			if (ReadyTime == 0)
			{
				camera_set_view_pos(view_camera[0], current_x, current_y);
			}
			else 
			{
				camera_set_view_pos(view_camera[0], target_x - 128, target_y - 112);
			}
			
		}
		#endregion
		#region Music
		if (MusicOn and !MusicLoop and !NoMusic)
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
if (scrIsBonusLevel() and MatchWait <= 0)
{
	if (instance_number(objTarget) == 0)
	{
		if (!MatchEnd)
		{
			NoMusic = true;
			audio_stop_sound(Control.IndexMusic);
			alarm[4] = 90;
			if (!BonusDeath)
			{
				#region Record
				if (BonusTimeMinute <= RecordMinute or (RecordMinute == -1))
				{
					if (BonusTimeSecond < RecordSecond or (RecordSecond == -1))
					{
						scrVoice(sndAnnouncerANewRecord);
						RecordMinute = BonusTimeMinute;
						MatchEndText = Language.Text_b0t0;
						RecordSecond = BonusTimeSecond;
						scrFileAchievementSave();
					}
					else
					{
						scrVoice(sndAnnouncerComplete);
						MatchEndText = Language.Text_b0t1;
					}
				}
				else
				{
					scrVoice(sndAnnouncerComplete);
					MatchEndText = Language.Text_b0t1;
				}
			}
			else
			{
				scrVoice(sndAnnouncerFailure);
				MatchEndText = Language.Text_b0t2;
			}
		}
		MatchEnd = true;
		#endregion
	}
}
if (MatchWait > 0)
{
	MatchWait--;
}
if (BattleLevel and MatchWait <= 0 and !scrIsBonusLevel() and !BattleLevelIsFreeze)
{
	if (instance_number(objCharacter) <= 1)
	{
		if (!MatchEnd)
		{
			NoMusic = true;
			audio_stop_sound(Control.IndexMusic);
			alarm[4] = 90;
			objCharacter.Inmune = false;
			objCharacter.image_alpha = 1;
			if (!BonusDeath)
			{
				scrVoice(sndAnnouncerGame);
				MatchEndText = Language.Text_v0r2;
			}
		}
		MatchEnd = true;
	}
}
#endregion
#region Queue
#region Create character
if (ds_list_size(QueueRevive) > 0)
{
	BattleLevelIsFreeze = true;
	var Pack = ds_list_find_value(QueueRevive , 0);
	CharacterRevivePosition = Pack[?"Position"];
	CharacterReviveDefault = Pack[?"Default"];
	CharacterReviveIndex = Pack[?"Index"];
	if (Control.CharacterLife[CharacterRevivePosition] > 0)
	{
		var X = room_width/2;
		var Spawn = scrGiveMeSpawn(CharacterRevivePosition , false);
		var Y = -sprite_height;
		if (scrExiste(Spawn))
		{
			X = Spawn.x;
			if (!CharacterReviveDefault)
			{
				Y = Spawn.y;
			}
		}
		var Character = instance_create_depth(X , Y , 0 , CharacterReviveIndex);
		Character.Position = CharacterRevivePosition;
		Character.ReviveDefault = CharacterReviveDefault;
		Character.Start = false;
		Character.VerticalMovement = 0;
		Character.HorizontalMovement = 0;
		if (scrExiste(Spawn))
		{
			Character.YPlatform = Spawn.y;
		}
		if (!CharacterReviveDefault)
		{
			with (Character)
			{
				scrOutPlatform();
			}
			if (scrExiste(objSpawn))
			{
				Character.x = objSpawn.x;
				Character.y = objSpawn.y;
			}
		}
	}
	Control.CharacterLife[CharacterRevivePosition]--;
	ds_list_delete(QueueRevive , 0);
	alarm[5] = 10;
}
#endregion
#endregion