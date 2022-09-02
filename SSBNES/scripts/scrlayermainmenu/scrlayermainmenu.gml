///@arg layer
function scrLayerMainMenu(LocalLayer)
{
	switch(LocalLayer)
	{
		case(0):
		{
			Layer = 0;
			alarm[0] = 2;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			LayerButton[1] = ActualButton;
			ActualButton = LayerButton[0];
			
			ButtonT[0] = Language.Text_ml0o0;
			ButtonT[1] = Language.Text_ml0o1;
			ButtonT[2] = Language.Text_ml0o2;
			ButtonT[3] = Language.Text_ml0o3;
			ButtonT[4] = Language.Text_ml0o4;
			
			ButtonD[0] = Language.Text_ml0d0;
			ButtonD[1] = Language.Text_ml0d1;
			ButtonD[2] = Language.Text_ml0d2;
			ButtonD[3] = Language.Text_ml0d3;
			ButtonD[4] = Language.Text_ml0d4;
			
			ButtonE[0] = Language.Text_ml0e0;
			ButtonE[1] = Language.Text_ml0e1;
			ButtonE[2] = Language.Text_ml0e2;
			ButtonE[3] = Language.Text_ml0e3;
			ButtonE[4] = Language.Text_ml0e4;

			ButtonA[0] = Language.Text_ml0o0;
			ButtonA[1] = Language.Text_ml0o1;
			ButtonA[2] = Language.Text_ml0o2;
			ButtonA[3] = Language.Text_ml0o3;
			ButtonA[4] = Language.Text_ml0o4;
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
			MainText = Language.Text_mtl0;
			break;
		}
		case(1):
		{
			Layer = 1;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			LayerButton[0] = 0;
			ActualButton = LayerButton[1];
			ButtonA[0] = Language.Text_ml1o0;
			ButtonA[1] = Language.Text_ml1o1;
			ButtonA[2] = Language.Text_ml1o2;
			ButtonA[3] = Language.Text_ml1o3;
			ButtonA[4] = "";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = Language.Text_ml1d0;
			ButtonD[1] = Language.Text_ml1d1;
			ButtonD[2] = Language.Text_ml1d2;
			ButtonD[3] = Language.Text_ml1d3;
					
			ButtonE[0] = Language.Text_ml1e0;
			ButtonE[1] = "";
			ButtonE[2] = Language.Text_ml1e2;
			ButtonE[3] = "";
					
					
					
			MainText = Language.Text_mtl1;
			break;
		}
		case(2):
		{
			Layer = 2;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			LayerButton[1] = 0;
			ActualButton = LayerButton[2];
			ButtonA[0] = Language.Text_ml2o0;
			ButtonA[1] = Language.Text_ml2o1;
			ButtonA[2] = Language.Text_ml2o2;
			ButtonA[3] = "";
			ButtonA[4] = "";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = Language.Text_ml2d0;
			ButtonD[1] = Language.Text_ml2d1;
			ButtonD[2] = Language.Text_ml2d2;
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
					
			MainText = Language.Text_mtl2;
			break;
		}
		case(3):
		{
			Layer = 3;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			LayerButton[1] = 2;
			ActualButton = LayerButton[3];
			ButtonA[0] = Language.Text_ml3o0;
			ButtonA[1] = Language.Text_ml3o1;
			ButtonA[2] = Language.Text_ml3o2;
			ButtonA[3] = Language.Text_ml3o3;
			ButtonA[4] = "";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = Language.Text_ml3d0;
			ButtonD[1] = Language.Text_ml3d1;
			ButtonD[2] = Language.Text_ml3d2;
			ButtonD[3] = Language.Text_ml3d3;
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
					
			MainText = Language.Text_mtl3;
			break;
		}
		case(4):
		{
			Layer = 4;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			LayerButton[0] = 1;
			ActualButton = LayerButton[4];
			ButtonA[0] = Language.Text_ml4o0;
			ButtonA[1] = Language.Text_ml4o1;
			ButtonA[2] = Language.Text_ml4o2;
			ButtonA[3] = Language.Text_ml4o3;
			ButtonA[4] = Language.Text_ml4o4;
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = Language.Text_ml4d0;
			ButtonD[1] = Language.Text_ml4d1;
			ButtonD[2] = Language.Text_ml4d2;
			ButtonD[3] = Language.Text_ml4d3;
			ButtonD[4] = Language.Text_ml4d4;
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
			ButtonE[4] = "";
					
			MainText = Language.Text_mtl4;
			break;
		}
		case(5):
		{
			Layer = 5;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			LayerButton[0] = 2;
			ActualButton = LayerButton[5];
			ButtonA[0] = Language.Text_ml5o0;
			ButtonA[1] = Language.Text_ml5o1;
			ButtonA[2] = Language.Text_ml5o2;
			ButtonA[3] = Language.Text_ml5o3;
			ButtonA[4] = Language.Text_ml5o4;
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = Language.Text_ml5d0;
			ButtonD[1] = Language.Text_ml5d1;
			ButtonD[2] = Language.Text_ml5d2;
			ButtonD[3] = Language.Text_ml5d3;
			ButtonD[4] = Language.Text_ml5d4;
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
			ButtonE[4] = "";
					
			MainText = Language.Text_mtl5;
			break;
		}
		case(6):
		{
			Layer = 6;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			LayerButton[0] = 3;
			ActualButton = LayerButton[6];
			ButtonA[0] = Language.Text_ml6o0;
			ButtonA[1] = Language.Text_ml6o1;
			ButtonA[2] = Language.Text_ml6o2;
			ButtonA[3] = Language.Text_ml6o3;
			ButtonA[4] = Language.Text_ml6o4;
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = Language.Text_ml6d0;
			ButtonD[1] = Language.Text_ml6d1;
			ButtonD[2] = Language.Text_ml6d2;
			ButtonD[3] = Language.Text_ml6d3;
			ButtonD[4] = Language.Text_ml6d4;
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
			ButtonE[4] = "";
					
			MainText = Language.Text_mtl6;
			break;
		}
		case(7):
		{
			Layer = 7;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			LayerButton[0] = 4;
			ActualButton = LayerButton[7];
			ButtonA[0] = Language.Text_ml7o0;
			ButtonA[1] = Language.Text_ml7o1;
			ButtonA[2] = Language.Text_ml7o2;
			ButtonA[3] = Language.Text_ml7o3;
			ButtonA[4] = Language.Text_ml7o4;
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = Language.Text_ml7d0;
			ButtonD[1] = Language.Text_ml7d1;
			ButtonD[2] = Language.Text_ml7d2;
			ButtonD[3] = Language.Text_ml7d3;
			ButtonD[4] = Language.Text_ml7d4;
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
			ButtonE[4] = "";
			
			MainText = Language.Text_mtl7;
			break;
		}
	}
	ActualButton = 0;
}