function scrChangeSkin(Value , Tope , _Position , Instance , Slot)
{
	var RealTope = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"t"];
	Value++;
	if (Value > RealTope)
	{
		Value = 0;
	}
	Value = scrCheckSkin(Value , _Position , Slot);
	if (RealTope > 0)
	{
		
		Instance.ColorBase[0] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c0_0"];
		Instance.ColorBase[1] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c0_1"];
		Instance.ColorBase[2] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c0_2"];
		Instance.ColorBase[3] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c0_3"];
		
		Instance.ColorSkin[0] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c"+string(Value)+"_0"];
		Instance.ColorSkin[1] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c"+string(Value)+"_1"];
		Instance.ColorSkin[2] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c"+string(Value)+"_2"];
		Instance.ColorSkin[3] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c"+string(Value)+"_3"];
		
		Control.CharacterSkin[Slot] = Value;
		
		Control.CharacterSkinSet[?"Base" + string(Slot) + "_0"] = Instance.ColorBase[0];
		Control.CharacterSkinSet[?"Base" + string(Slot) + "_1"] = Instance.ColorBase[1];
		Control.CharacterSkinSet[?"Base" + string(Slot) + "_2"] = Instance.ColorBase[2];
		Control.CharacterSkinSet[?"Base" + string(Slot) + "_3"] = Instance.ColorBase[3];
		
		Control.CharacterSkinSet[?"Skin" + string(Slot) + "_0"] = Instance.ColorSkin[0];
		Control.CharacterSkinSet[?"Skin" + string(Slot) + "_1"] = Instance.ColorSkin[1];
		Control.CharacterSkinSet[?"Skin" + string(Slot) + "_2"] = Instance.ColorSkin[2];
		Control.CharacterSkinSet[?"Skin" + string(Slot) + "_3"] = Instance.ColorSkin[3];
		
	}
	return Value;
}


function scrResetSkin(_Position , Instance , Slot)
{
	var Value = 0;
	Value = scrCheckSkin(0 , _Position , Slot);
	Instance.ColorBase[0] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c0_0"];
	Instance.ColorBase[1] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c0_1"];
	Instance.ColorBase[2] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c0_2"];
	Instance.ColorBase[3] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c0_3"];
		
	Instance.ColorSkin[0] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c"+string(Value)+"_0"];
	Instance.ColorSkin[1] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c"+string(Value)+"_1"];
	Instance.ColorSkin[2] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c"+string(Value)+"_2"];
	Instance.ColorSkin[3] = scrDameDato(Control.CharacterList , _Position , "Palette Code")[?"c"+string(Value)+"_3"];
		
	Control.CharacterSkin[Slot] = Value;
		
	Control.CharacterSkinSet[?"Base" + string(Slot) + "_0"] = Instance.ColorBase[0];
	Control.CharacterSkinSet[?"Base" + string(Slot) + "_1"] = Instance.ColorBase[1];
	Control.CharacterSkinSet[?"Base" + string(Slot) + "_2"] = Instance.ColorBase[2];
	Control.CharacterSkinSet[?"Base" + string(Slot) + "_3"] = Instance.ColorBase[3];
		
	Control.CharacterSkinSet[?"Skin" + string(Slot) + "_0"] = Instance.ColorSkin[0];
	Control.CharacterSkinSet[?"Skin" + string(Slot) + "_1"] = Instance.ColorSkin[1];
	Control.CharacterSkinSet[?"Skin" + string(Slot) + "_2"] = Instance.ColorSkin[2];
	Control.CharacterSkinSet[?"Skin" + string(Slot) + "_3"] = Instance.ColorSkin[3];
	
	return Value;
}

function scrCheckSkin(Value , Position , Slot)
{
	for (var i = 0 ; i < 4 ; i++)
	{
		if (i != Slot)
		{
			var Square = instance_find(objPlayerSquare , i);
			if (Square.IdeCharacter == Position and Position != 0)
			{
				if (Square.IdeSkin == Value)
				{
					Value++;
					i = 0;
					var RealTope = scrDameDato(Control.CharacterList , Position , "Palette Code")[?"t"];
					if (Value > RealTope)
					{
						Value = 0;
					}
				}
			}
		}
	}
	return Value;
}