#region Refresh power
if (RefreshPower and Ide != -1)
{
	RefreshPower = false;
	if (PowerScale and MinValuePower != -1 and MaxValuePower != -1)
	{
		var LowPower = scrDameDato(Control.MovList , Ide , "Power");
		var LoadPorcentage = scrGetTotalPorcentageFromTwoValues(LowPower , Creator.SmashMaxPower , Creator.SmashActualPower);
			
		Power = scrGetTotalValueFromTwoPorcentages(MinValuePower , MaxValuePower , LoadPorcentage);
	}
	if (PowerScale and MinValuePower == -1 and MaxValuePower == -1)
	{
		Power = Creator.SmashActualPower;
	}
}
#endregion