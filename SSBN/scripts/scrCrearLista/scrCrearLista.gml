///@desc Crea una lista y la retorna
///@arg valor*
function scrCrearLista()
{
	
	var NuevaLista = ds_list_create();
	for (var i = 0 ; i < argument_count ; i++)
	{
		ds_list_add(NuevaLista , argument[i]);
	}
	return NuevaLista;
}