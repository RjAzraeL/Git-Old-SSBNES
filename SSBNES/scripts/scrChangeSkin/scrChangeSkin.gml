function scrChangeSkin(Value , Tope , _Position , Instance)
{
	var RealTope = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"t"];
	Value++;
	if (Value > RealTope)
	{
		Value = 0;
	}
	if (RealTope > 0)
	{
		Instance.ColorSkin[0] = real(scrDameDato(Control.CharacterList , Control.CharacterId[_Position] , "Palette Code")[?"c"+string(Value)+"_0"]);
		Instance.ColorSkin[1] = real(scrDameDato(Control.CharacterList , Control.CharacterId[_Position] , "Palette Code")[?"c"+string(Value)+"_1"]);
		Instance.ColorSkin[2] = real(scrDameDato(Control.CharacterList , Control.CharacterId[_Position] , "Palette Code")[?"c"+string(Value)+"_2"]);
		Instance.ColorSkin[3] = real(scrDameDato(Control.CharacterList , Control.CharacterId[_Position] , "Palette Code")[?"c"+string(Value)+"_3"]);
	}
	return Value;
}