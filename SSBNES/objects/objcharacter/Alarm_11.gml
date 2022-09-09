#region Set character
scrSetCharacter();
scrSetInmune(1,self);
VoidChecker = instance_create_depth(x , y , depth + 1 , objVoidChecker);
VoidChecker.Master = self;
#endregion