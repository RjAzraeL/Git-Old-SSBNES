///@arg key
function scrKeyboardKeyName(Code)
{
	var Name = global.keyboard_key_to_name[? Code];
	if (Name == undefined)
	{
		return "";
	}
	return Name;
}

///@arg string
function scrKeyboardKeyCode(Name)
{
	var Code = global.keyboard_name_to_key[? string_lower(Name)];
	if (Code == undefined)
	{
		return -1;
	}
	return Code;
}