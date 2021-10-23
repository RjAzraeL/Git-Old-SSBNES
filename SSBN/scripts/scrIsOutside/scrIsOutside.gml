///@arg instance
function scrIsOutside(Instance)
{
	return Instance.x < -32 or Instance.x > room_width+32 or Instance.y < -32 or Instance.y > room_height+32;
}