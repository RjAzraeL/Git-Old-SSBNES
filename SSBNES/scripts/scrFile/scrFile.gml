function scrFileKeyLoad()
{	
	ini_open("kv.sav");
	
	#region Player 1
	Control.LeftButton = ini_read_real( "K" , "1L" , Control.DEFAULT_LeftButton );
	Control.RightButton = ini_read_real( "K" , "1R" , Control.DEFAULT_RightButton );
	Control.UpButton = ini_read_real( "K" , "1U" , Control.DEFAULT_UpButton );
	Control.DownButton = ini_read_real( "K" , "1D" , Control.DEFAULT_DownButton );
	
	Control.JumpButton = ini_read_real( "K" , "1J" , Control.DEFAULT_JumpButton );
	Control.AttackButton = ini_read_real( "K" , "1A" , Control.DEFAULT_AttackButton );
	
	Control.StartButton = ini_read_real( "K" , "1ST" , Control.DEFAULT_StartButton );
	Control.SelectButton = ini_read_real( "K" , "1SL" , Control.DEFAULT_SelectButton );
	#endregion
	#region Player 2
	Control._2LeftButton = ini_read_real( "K" , "2L" , Control.DEFAULT_2LeftButton );
	Control._2RightButton = ini_read_real( "K" , "2R" , Control.DEFAULT_2RightButton );
	Control._2UpButton = ini_read_real( "K" , "2U" , Control.DEFAULT_2UpButton );
	Control._2DownButton = ini_read_real( "K" , "2D" , Control.DEFAULT_2DownButton );
	
	Control._2JumpButton = ini_read_real( "K" , "2J" , Control.DEFAULT_2JumpButton );
	Control._2AttackButton = ini_read_real( "K" , "2A" , Control.DEFAULT_2AttackButton );
	
	Control._2StartButton = ini_read_real( "K" , "2ST" , Control.DEFAULT_2StartButton );
	Control._2SelectButton = ini_read_real( "K" , "2SL" , Control.DEFAULT_2SelectButton );
	#endregion
	
	ini_close();
}

///@arg index
///@arg newkey
///@arg player
function scrFileKeySave(Index , Newkey , Player)
{	
	ini_open("kv.sav");
	var String = "";
	switch (Index)
	{
		case(0):
		{
			String = (Player == 0) ? "1L" : "2L";
			break;
		}
		case(1):
		{
			String = (Player == 0) ? "1R" : "2R";
			break;
		}
		case(2):
		{
			String = (Player == 0) ? "1U" : "2U";
			break;
		}
		case(3):
		{
			String = (Player == 0) ? "1D" : "2D";
			break;
		}
		case(4):
		{
			String = (Player == 0) ? "1J" : "2J";
			break;
		}
		case(5):
		{
			String = (Player == 0) ? "1A" : "2A";
			break;
		}
		case(6):
		{
			String = (Player == 0) ? "1ST" : "2ST";
			break;
		}
		case(7):
		{
			String = (Player == 0) ? "1SL" : "2SL";
			break;
		}
	}
	ini_write_real("K" , String , Newkey);
	ini_close();
}