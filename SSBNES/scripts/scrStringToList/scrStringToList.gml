///@arg string
function scrStringToList(Text)
{
	var List = ds_list_create();
	var TextLocal = "";
	for (var i = 1 ; i <= string_length(Text) ; i++)
	{
		Char = string_char_at(Text , i);
		if (Char != ",")
		{
			TextLocal += Char;
		}
		else
		{
			ds_list_add(List , TextLocal);
			TextLocal = "";
		}
	}
	if (TextLocal != "")
	{
		ds_list_add(List , TextLocal);
	}
	return List;
}