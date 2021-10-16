///@arg boton
function scrReiniciarJuego(Boton)
{
	if (keyboard_check_pressed(Boton))
	{
		game_restart();
	}
}