#region Variable
Target = scrSearchRival(self);
alarm[0] = 30;
if (scrProbable(.1))
{
	ChaseStyle = choose("Go max","Go min");
}
#endregion