#region Buttons
LeftButtonActive = keyboard_check(LeftButton);
LeftButtonPressedActive = keyboard_check_pressed(LeftButton);
RightButtonActive = keyboard_check(RightButton);
RightButtonPressedActive = keyboard_check_pressed(RightButton);
JumpButtonActive = keyboard_check_pressed(JumpButton);
DownButtonActive = keyboard_check(DownButton);
DownButtonPressedActive = keyboard_check_pressed(DownButton);
DownButtonReleasedActive = keyboard_check_released(DownButton);
#endregion

#region Generic
scrCambiarPantalla(vk_f4);
scrReiniciarJuego(vk_f1);
#endregion