#region Volver
if (BattleLevel)
{
	audio_stop_all();
	BattleLevel = false;
	room_goto(rm03Versus);
}
if (scrIsBonusLevel())
{
	audio_stop_all();
	BattleLevel = false;
	room_goto(rm02Menu);
}
#endregion