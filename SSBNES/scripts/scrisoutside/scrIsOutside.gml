///@arg instance
function scrIsOutside(Instance)
{
	return Instance.x < -32 or Instance.x > room_width+32 or Instance.y < -32 or Instance.y > room_height+32;
}

///@arg instance
function scrIsOutsideCamera(Instance)
{
	var ValueLeft = Control.xx - Control.HalfViewWidth;
	var ValueRight = Control.xx + Control.HalfViewWidth;
	return Instance.x < ValueLeft - 32 or Instance.x > ValueRight+32 or Instance.y < -32 or Instance.y > room_height+32;
}