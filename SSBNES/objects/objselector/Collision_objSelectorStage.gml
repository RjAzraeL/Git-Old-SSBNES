#region Collision
if (scrExiste(objSelectorStage))
{
	objScreenStage.image_index = other.image_index;
}
if (Control.Wait == 0)
{
	if (Control.JumpButtonPressedActive)
	{
		Control.Wait = 5;
		if (other.image_index < ds_list_size(Control.StageList))
		{
			room_goto(scrDameDato(Control.StageList , other.image_index , "Room"));
		}
	}
}
#endregion