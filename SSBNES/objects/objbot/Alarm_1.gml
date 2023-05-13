#region
var LC = scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "MovList Recover");
var LR = scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "MovList Range");
var LM = scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "MovList Melee");
ListRecover = ds_list_copy(ListRecover , LC);
ListRange = ds_list_copy(ListRange , LR);
ListMelee = ds_list_copy(ListMelee , LM);
#endregion