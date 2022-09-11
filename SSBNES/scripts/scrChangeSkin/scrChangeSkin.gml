function scrChangeSkin(Value , Tope , _Position)
{
	Value++;
	if (Value > Tope)
	{
		Value = 0;
	}
	ColorSkin[0] = real(scrDameDato(Control.CharacterList , Control.CharacterId[_Position] , "Palette Code")[?"c"+string(Value)+"_0"]);
	ColorSkin[1] = real(scrDameDato(Control.CharacterList , Control.CharacterId[_Position] , "Palette Code")[?"c"+string(Value)+"_1"]);
	ColorSkin[2] = real(scrDameDato(Control.CharacterList , Control.CharacterId[_Position] , "Palette Code")[?"c"+string(Value)+"_2"]);
	ColorSkin[3] = real(scrDameDato(Control.CharacterList , Control.CharacterId[_Position] , "Palette Code")[?"c"+string(Value)+"_3"]);
	return Value;
}