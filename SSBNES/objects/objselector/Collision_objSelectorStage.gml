#region Collision
if (scrExiste(objSelectorStage))
{
	objScreenStage.image_index = other.image_index;
	if (other.image_index < ds_list_size(Control.StageList))
	{
		Control.StageId = other.image_index;
		objScreenStage.Text = scrDameDato(Control.StageList , other.image_index , "Name");
	}
}
if (Control.Wait == 0)
{
	if (Control.JumpButtonPressedActive)
	{
		Control.Wait = 5;
		if (other.image_index < ds_list_size(Control.StageList))
		{
			audio_stop_all();
			Control.BattleLevel = true;
			room_goto(scrDameDato(Control.StageList , other.image_index , "Room"));
		}
	}
}
#endregion