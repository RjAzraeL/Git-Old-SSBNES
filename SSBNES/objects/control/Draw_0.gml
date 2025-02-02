#region Draw
if (BattleLevel)
{	
	if (!CreateBot)
	{
		//scrSimpleText(scrX() + 128 , scrY() + 24 , "Use 'B' to summon a bot");
	}
	var PosY = 18;
	if (!ShowMask and ShowMovsMask)
	{
		var PosY = 0;
	}
	if (ShowMask)
	{
		scrText(scrX() + 16 , scrY() + 16 , "Hitbox actived" , fa_center , fa_left , fntNormal , c_black , c_white , 32 , 640 , 1 , 1 , 0 , 1);
	}
	if (ShowMovsMask)
	{
		scrText(scrX() + 16 , scrY() + 16 + PosY , "Movs Hitbox actived" , fa_center , fa_left , fntNormal , c_black , c_white , 32 , 640 , 1 , 1 , 0 , 1);
	}
	if (ShowHUD)
	{
		var Largo = 64;
		var LargoMenos = 0;
		var Y = 176;
		var Offset = 0;
		for (var i = 0 ; i < 4 ; i++)
		{
			if (!CharacterReady[i])
			{
			}
			else
			{
				var ColorHud = CharacterColorHud[i];
				if (CharacterType[i] == 2)
				{
					ColorHud = CharacterColorHud[2];
				}
				draw_sprite_ext(sprHudBody , 0 , scrX() + 2 + (Largo-LargoMenos) * (Offset) , scrY() + Y, 1, 1, 0, ColorHud ,1);
				var Number = "00" + string(CharacterPorcentage[i]);
				var RealNumber = "";
				RealNumber += string_char_at( Number , string_length(Number)-2 );
				RealNumber += string_char_at( Number , string_length(Number)-1 );
				RealNumber += string_char_at( Number , string_length(Number) );
				scrText(scrX() + 28 + (Largo-LargoMenos) * (Offset) , scrY() + Y + 24 , RealNumber , fa_center , fa_left , FontPorcentage , c_white , c_white , 32 , 400 , 1 , 1 , 0 , 1);
		
				#region Shader
				shader_set(shdColorChange);
		
		
		
				//0
				shader_set_uniform_f(shader_get_uniform(shdColorChange, "rep1"), ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_0"] , 0) , ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_0"] , 1) , ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_0"] , 2));
				shader_set_uniform_f(shader_get_uniform(shdColorChange, "new1"), ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_0"] , 0) , ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_0"] , 1) , ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_0"] , 2));
				//1
				shader_set_uniform_f(shader_get_uniform(shdColorChange, "rep2"), ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_1"] , 0) , ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_1"] , 1) , ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_1"] , 2));
				shader_set_uniform_f(shader_get_uniform(shdColorChange, "new2"), ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_1"] , 0) , ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_1"] , 1) , ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_1"] , 2));
				//2
				shader_set_uniform_f(shader_get_uniform(shdColorChange, "rep3"), ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_2"] , 0) , ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_2"] , 1) , ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_2"] , 2));
				shader_set_uniform_f(shader_get_uniform(shdColorChange, "new3"), ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_2"] , 0) , ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_2"] , 1) , ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_2"] , 2));
				//3
				shader_set_uniform_f(shader_get_uniform(shdColorChange, "rep4"), ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_3"] , 0) , ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_3"] , 1) , ds_list_find_value(CharacterSkinSet[?"Base"+string(i)+"_3"] , 2));
				shader_set_uniform_f(shader_get_uniform(shdColorChange, "new4"), ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_3"] , 0) , ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_3"] , 1) , ds_list_find_value(CharacterSkinSet[?"Skin"+string(i)+"_3"] , 2));
		
				draw_sprite(sprHudBody2 , scrDameDato(Control.CharacterList , CharacterId[i] , "Hud Index") , scrX() + 2 + (Largo-LargoMenos) * (Offset) , scrY() + Y);
		
				for (var j = 0 ; j <= CharacterLife[i] ; j++)
				{
					draw_sprite_ext(sprHudIcons , CharacterId[i]+1 , scrX() + 2 + (Largo-LargoMenos) * (Offset) + (j*10) , scrY() + Y + 34 , 1 , 1 , 0 , c_white , 1);
				}
				shader_reset();
				#endregion
				draw_sprite_ext(sprHudBody , 1 , scrX() + 2 + (Largo-LargoMenos) * (Offset) , scrY() + Y, 1, 1, 0, ColorHud ,1);
				scrText(scrX() + 30 + (Largo-LargoMenos) * (Offset) , scrY() + Y + 41 , string_upper(scrDameDato(Control.CharacterList , CharacterId[i] , "Name")), fa_middle , fa_center , Control.FontSmall , c_black , c_white , 32 , 400 , 1 , 1 , 0 , 1);
				if (CharacterId[i] == 7)
				{
					draw_sprite(sprChPollierGroundAttackDownItems , CharacterPollierMov[i] , scrX() + 32 + (Largo-LargoMenos) * (Offset) , scrY() + Y - 6 );
				}
				Offset++;
			}
			//scrText(x + 31 , y + 83 , ButtonChildren.ActualRoster.namIde , fa_middle , fa_center , Control.ActualFont , c_black , c_white , 32 , 256 , .75 , .75 , 0 , 1);
		}
	}
}
if (scrIsBonusLevel())
{
	#region Time
	if (ShowHUD)
	{
		if (RecordMinute != -1) 
		{
			scrText(scrX() + 244 , scrY() + 48 , "" + string_replace_all(string_format(RecordMinute,2,0) , " " , "0") + ":" + string_replace_all(string_format(RecordSecond,2,0) , " " , "0") , fa_middle , fa_right , Control.ActualFont , c_black , c_yellow , 32 , room_width , 1 , 1 , 0 , 1);
		}
		scrText(scrX() + 244 , scrY() + 32 , "" + string_replace_all(string_format(BonusTimeMinute,2,0) , " " , "0") + ":" + string_replace_all(string_format(BonusTimeSecond,2,0) , " " , "0") , fa_middle , fa_right , Control.ActualFont , c_black , c_white , 32 , room_width , 1 , 1 , 0 , 1);
		#endregion
		#region Target
		var Fila = 0;
		var Columna = 0;
		for (var i = 0 ; i < instance_number(objTarget) ; i++)
		{
			draw_sprite(sprTargetMin , 0 , scrX() + 12 + 10*Columna , scrY() + 12 + 10*Fila);
			Columna++;
			if (Columna >= 5)
			{
				Columna = 0;
				Fila++;
			}
		}
	}
	#endregion
}
#region End screen
if (MatchEnd)
{
	if (surface_exists( MatchEndSurface ))
	{
		draw_surface_ext(MatchEndSurface , scrX() , scrY() , 1 , 1 , 0 , c_white , 1);
	}
	else
	{
	    MatchEndSurface = surface_create(view_wport[0] , view_hport[0]);
		surface_copy(MatchEndSurface , 0 , 0 , application_surface);
		instance_destroy(objCharacter);
	}
	scrText(scrX() + 128 , scrY() + 112 , string_upper(MatchEndText) , fa_middle , fa_center , Control.ActualFont , c_black , c_white , 16 , 56 , 3 , 3 , 0 , 1);
}
#endregion
#region Ready
if (ReadyTime > 0)
{
	var TextLocal = ReadyTime-1;
	if (TextLocal == 0)
	{
		TextLocal = "GO!";
	}
	scrText(scrX() + 128 , scrY() + 112 , string_upper(TextLocal) , fa_middle , fa_center , Control.ActualFont , c_black , c_white , 16 , 56 , 4 , 4 , 0 , 1);
}
#endregion
#endregion