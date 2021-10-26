#region Set variables
depth = -10;
Delta = delta_time / 1000000;
VolumeMusic = .2;
VolumeSound = .1;
IndexMusic = -1;
CharacterId[0] = 1;
CharacterId[1] = 1;
CharacterId[2] = 1;
CharacterId[3] = 1;
CharacterPorcentage[0] = 0;
CharacterPorcentage[1] = 0;
CharacterPorcentage[2] = 0;
CharacterPorcentage[3] = 0;
CharacterLife[0] = 6;
CharacterLife[1] = 6;
CharacterLife[2] = 6;
CharacterLife[3] = 6;
TotalCharacters = 1;
ShowMask = false;
FontPorcentage = font_add_sprite_ext(sprHudNumbers , "0123456789" , true , 0);
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