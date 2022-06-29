///@arg sound
function scrSound(Sound)
{
	audio_sound_gain(Sound , Control.VolumeSound , 0);
	audio_play_sound(Sound , 5 , false);
}


///@arg Name
function scrSetMusic(Name)
{
	var List = scrGetMusicBodyById( scrGetMusicByName(Name) );
	
	MusicOn = true;
	if (ds_list_size(List) > 1)
	{
		MusicLoop = false;
		scrMusic(ds_list_find_value(List , 0));
		MusicNext = ds_list_find_value(List , 1);
	}
	else
	{
		MusicLoop = true;
		scrMusicLoop(ds_list_find_value(List , 0));
	}
}

///@arg music
function scrMusic(Music)
{
	if (Control.IndexMusic != Music)
	{
		audio_stop_sound(Control.IndexMusic);
		audio_sound_gain(Music , Control.VolumeMusic , 0);
		audio_play_sound(Music , 10 , false);
		Control.IndexMusic = Music;
	}
}
function scrMusicLoop(Music)
{
	if (Control.IndexMusic != Music)
	{
		audio_sound_gain(Music , Control.VolumeMusic , 0);
		audio_play_sound(Music , 10 , true);
		Control.IndexMusic = Music;
	}
}