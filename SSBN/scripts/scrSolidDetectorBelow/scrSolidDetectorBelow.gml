function scrSolidDetectorBelow()
{
	return (place_meeting(x , y + 4 , parCollision) or place_meeting(x , y + 4 , objBlockSlope45)) and (!place_meeting(x , y , parCollision))
}