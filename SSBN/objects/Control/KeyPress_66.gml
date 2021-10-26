#region Bot
if (!CreateBot)
{
	CreateBot = true;
	var Bot = instance_create_depth(room_width/2 , 16 , 0 , objBot);
	Bot.Position = 1;
	TotalCharacters = 2;
}
#endregion