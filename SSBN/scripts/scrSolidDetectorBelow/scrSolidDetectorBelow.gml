function scrSolidDetectorBelow()
{
	return (place_meeting(x , y + 1 , parCollision) or place_meeting(x , y + 1 , objBlockSlope45)) and (!place_meeting(x , y , parCollision))
}