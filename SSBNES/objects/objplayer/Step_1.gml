#region Controllers
if (Position == 0)
{
		RightButtonActive = Control.RightButtonActive;
		LeftButtonActive = Control.LeftButtonActive;
		DownButtonPressedActive = Control.DownButtonPressedActive;
		LeftButtonPressedActive = Control.LeftButtonPressedActive;
		RightButtonPressedActive = Control.RightButtonPressedActive;
		JumpButtonActive = Control.JumpButtonActive;
		JumpButtonReleaseActive = Control.JumpButtonReleaseActive;
		AttackButtonPressedActive = Control.AttackButtonPressedActive;
		DownButtonReleasedActive = Control.DownButtonReleasedActive;
		DownButtonActive = Control.DownButtonActive;
		AttackButtonActive = Control.AttackButtonActive;
		AttackButtonReleasedActive = Control.AttackButtonReleasedActive;
		UpButtonActive = Control.UpButtonActive;
		UpButtonReleasedActive = Control.UpButtonReleasedActive;
		UpButtonPressedActive = Control.UpButtonPressedActive;
		JumpButtonPressedActive = Control.JumpButtonPressedActive;
}
else
{
	if (Control.Client)
	{
		instance_destroy();
	}
	RightButtonActive = Control._2RightButtonActive;
	LeftButtonActive = Control._2LeftButtonActive;
	DownButtonPressedActive = Control._2DownButtonPressedActive;
	LeftButtonPressedActive = Control._2LeftButtonPressedActive;
	RightButtonPressedActive = Control._2RightButtonPressedActive;
	JumpButtonActive = Control._2JumpButtonActive;
	JumpButtonReleaseActive = Control._2JumpButtonReleaseActive;
	AttackButtonPressedActive = Control._2AttackButtonPressedActive;
	DownButtonReleasedActive = Control._2DownButtonReleasedActive;
	DownButtonActive = Control._2DownButtonActive;
	AttackButtonActive = Control._2AttackButtonActive;
	AttackButtonReleasedActive = Control._2AttackButtonReleasedActive;
	UpButtonActive = Control._2UpButtonActive;
	UpButtonReleasedActive = Control._2UpButtonReleasedActive;
	UpButtonPressedActive = Control._2UpButtonPressedActive;
	JumpButtonPressedActive = Control._2JumpButtonPressedActive;
}
#endregion
#region Multiplayer 
if (Control.Client and Position == 1)
{
	visible = false;
	#region Send data to server
	BufferBasic = buffer_create(128 , buffer_grow , 1);
	buffer_seek(BufferBasic , buffer_seek_start , 0);
	buffer_write(BufferBasic , buffer_u8 , 1);
	buffer_write(BufferBasic , buffer_s16 , Control._2LeftButtonActive);
	buffer_write(BufferBasic , buffer_s16 , Control._2LeftButtonPressedActive);
	buffer_write(BufferBasic , buffer_s16 , Control._2LeftButtonReleasedActive);
	buffer_write(BufferBasic , buffer_s16 , Control._2RightButtonActive);
	buffer_write(BufferBasic , buffer_s16 , Control._2RightButtonPressedActive);
	buffer_write(BufferBasic , buffer_s16 , Control._2RightButtonReleasedActive);

	Send = network_send_packet(objClient.SocketClient , BufferBasic , buffer_tell(BufferBasic));
	#endregion
}
#endregion