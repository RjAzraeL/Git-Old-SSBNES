function scrSound(Sound)
{
	audio_sound_gain(Sound , Control.VolumeSound , 0);
	audio_play_sound(Sound , 5 , false);
}

function scrMusic(Music)
{
	if (Control.IndexMusic != Music)
	{
		audio_sound_gain(Music , Control.VolumeMusic , 0);
		audio_play_sound(Music , 10 , true);
		Control.IndexMusic = Music;
	}
}