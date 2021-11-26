///@instancia
function scrFowardButtonActive(Instance)
{
	if (Instance.ScaleXSprite > 0 and RightButtonActive)
	{
		return true;
	}
	if (Instance.ScaleXSprite < 0 and LeftButtonActive)
	{
		return true;
	}
	return false;
}

///@instancia
function scrBackButtonActive(Instance)
{
	if (Instance.ScaleXSprite < 0 and RightButtonActive)
	{
		return true;
	}
	if (Instance.ScaleXSprite > 0 and LeftButtonActive)
	{
		return true;
	}
	return false;
}