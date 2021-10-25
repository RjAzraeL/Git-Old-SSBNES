#region Set variables
Delta = delta_time / 1000000;
VolumeMusic = .1;
VolumeSound = 1;
IndexMusic = -1;
CharacterId = 1;
ShowMask = false;

#region Data

scrDataMov();
scrDataMusic();
scrDataCharacter();

#endregion

RoomVoidY = 150;
Gravity = .3;
PlatformTimeAvailable = 300;
MusicNext = sfxKirbyJump;
MusicOn = false;
MusicLoop = false;
CharacterLimit = ds_list_size(Control.CharacterList)-1;
xx = 0;
yy = 0;
Limite = 90;
LimiteVelocidad = 0.025;
PlatformYLimit = 32;
CreateBot = false;
#endregion

#region Index
IndexImage2 = 0;
#endregion

#region Controls
LeftButton = vk_left;
RightButton = vk_right;
DownButton = vk_down;
UpButton = vk_up;
JumpButton = ord("X");
AttackButton = ord("C");
StartButton = vk_enter;
SelectButton = vk_space;
ShowColissionButton = vk_f8;

alarm[0] = 5;
#endregion