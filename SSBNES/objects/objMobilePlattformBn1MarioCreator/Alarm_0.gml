#region Create
alarm[0] = 120;
var PlattformMini = instance_create_depth(16 , 720 , depth , objMobilePlattformBn1MarioMini);
var Plattform = instance_create_depth(143 - 24 , 83 , depth , objMobilePlattformBn1Mario);
Plattform.speed = 1;
Plattform.direction = 0;
PlattformMini.speed = 1;
PlattformMini.direction = 90;
#endregion