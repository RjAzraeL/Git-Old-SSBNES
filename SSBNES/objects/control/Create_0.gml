#region Set variables
instance_create_depth(0 , 0 , 0 , Language);
scrLanguageLoadTexto(1);
depth = -10;
Delta = delta_time / 1000000;
VolumeMusic = 0.1;
VolumeSound = 0.35;
IndexMusic = -1;
Wait = 0;
MenuActualLayer = 0;
MenuActualOption = 0;
CharacterType[0] = -1;
CharacterType[1] = -1;
CharacterType[2] = -1;
CharacterType[3] = -1;
CharacterReady[0] = false;
CharacterReady[1] = false;
CharacterReady[2] = false;
CharacterReady[3] = false;
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
StageId = 0;
ShowMask = false;
ShowMovsMask = false;
FontPorcentage = font_add_sprite_ext(sprHudNumbers , "0123456789" , true , 0);
Font = font_add_sprite_ext(sprFont , " !ƒ#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ" , false , 0);
#region Data

scrDataMov();
scrDataMusic();
scrDataCharacter();
scrDataStage();

#endregion

RoomVoidY = 145;
RoomLimitX = 30;
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
ShowColissionButton = vk_f1;
ShowColissionMovsButton = vk_f2;
BattleLevel = false;
alarm[0] = 5;
#endregion