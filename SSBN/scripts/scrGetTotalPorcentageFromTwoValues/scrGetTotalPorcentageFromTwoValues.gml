///@arg min
///@arg max
///@arg val
function scrGetTotalPorcentageFromTwoValues(Min, Max, Value)
{
	var SizeTotal = Max - Min;
	var SizeActual = Value - Min;
	
	return ( ( SizeActual * 100) / SizeTotal );
}


///@arg min
///@arg max
///@arg por
function scrGetTotalValueFromTwoPorcentages(Min, Max, Porcentage)
{
	var SizeTotal = Max - Min;
	var SizeActual = Porcentage;
	
	return ( (SizeActual * SizeTotal ) / 100) + Min ;
	
}


