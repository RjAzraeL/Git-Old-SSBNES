#region
var LC = scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "ListMov Recover");
var LR = scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "ListMov Range");
var LM = scrDameDato(Control.CharacterList , Control.CharacterId[Position] , "ListMov Melee");
ListRecover = ds_list_copy(ListRecover , LC);
ListRange = ds_list_copy(ListRange , LR);
ListMelee = ds_list_copy(ListMelee , LM);
#endregion