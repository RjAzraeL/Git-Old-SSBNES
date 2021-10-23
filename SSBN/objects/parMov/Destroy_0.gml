#region List
if (scrExiste(Creator))
{
	ds_list_delete(Creator.MyMovs ,  ds_list_find_index(Creator.MyMovs , self) );
}
#endregion