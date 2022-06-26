/// @desc Se utiliza para conseguir un valor que varia dependiendo de una tasa y tope
/// @arg Valor
/// @arg Tasa
/// @arg PrimerTope
/// @arg SegundoTope
function scrVariador(Valor,Tasa,Tope,Tope2)
{
	Valor += Tasa;
	if (Valor > Tope or Valor < Tope2)
	{
		Tasa *= -1;
	}
	var Valores;
	Valores[0] = Valor;
	Valores[1] = Tasa;
	return Valores;
}