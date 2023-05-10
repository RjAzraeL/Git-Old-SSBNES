#region Set var
Ide = 0;
image_speed = 0;
image_index = Ide;
alarm[0] = 1;
ButtonChildren = noone;
sprRosterImage = 0;
sprRosterSpeed = 0.1;
Ready = false;
IdeCharacter = 0;
instance_create_depth(x,y,depth+1,objPlayerSquare2);
IdeSkin = 0;
IdeSkinTope = 0;
Random = false;

/*
ColorBase[0] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c0_0"]);
ColorBase[1] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c0_1"]);
ColorBase[2] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c0_2"]);
ColorBase[3] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c0_3"]);

ColorSkin[0] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c"+string(IdeSkin)+"_0"]);
ColorSkin[1] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c"+string(IdeSkin)+"_1"]);
ColorSkin[2] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c"+string(IdeSkin)+"_2"]);
ColorSkin[3] = real(scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "Palette Code")[?"c"+string(IdeSkin)+"_3"]);
*/

ColorBase[0] = scrStringToList("0,0,0");
ColorBase[1] = scrStringToList("0,0,0");
ColorBase[2] = scrStringToList("0,0,0");
ColorBase[3] = scrStringToList("0,0,0");

ColorSkin[0] = scrStringToList("0,0,0");
ColorSkin[1] = scrStringToList("0,0,0");
ColorSkin[2] = scrStringToList("0,0,0");
ColorSkin[3] = scrStringToList("0,0,0");

#endregion