#region
var LC = scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "ListMov Recover");
var LR = scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "ListMov Range");
var LM = scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "ListMov Melee");
ds_list_copy(ListRecover , LC);
ds_list_copy(ListRange , LR);
ds_list_copy(ListMelee , LM);
#endregion