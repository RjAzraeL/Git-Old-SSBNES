#region Volver
if (BattleLevel)
{
	audio_stop_all();
	BattleLevel = false;
	room_goto(rm03Versus);
}
#endregion