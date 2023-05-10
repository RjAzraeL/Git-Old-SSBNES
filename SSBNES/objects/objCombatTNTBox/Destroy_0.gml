#region Destroy
event_inherited();
var Box = instance_create_depth(x , y , depth , objCombatExplosion);
Box.Creator = Creator;
Box.Ide = Ide;
#endregion