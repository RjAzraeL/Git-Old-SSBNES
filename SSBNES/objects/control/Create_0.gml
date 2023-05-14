#region Set variables
Server = false;
Client = false;
Online = false;

#region Record
RecordSecond = -1;
RecordMinute = -1;

scrFileAchievementLoad();
#endregion

instance_create_depth(0 , 0 , 0 , Language);
LanguageActual = 0;
FontPorcentage = font_add_sprite_ext(sprHudNumbers , "0123456789" , true , 0);
Font = font_add_sprite_ext(sprFont , " !ƒ#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ╚" , false , 0);
FontSmall = font_add_sprite_ext(sprFontSmall , "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890ÄÉÓ" , false , 0);
ActualFont = Font;
scrFileLanguageLoad();
scrLanguageLoadTexto(LanguageActual);
depth = -10;
VoidValue = 64;
BattleLevelIsFreeze = false;
CharacterRevivePosition = -1;
CharacterReviveDefault = -1;
CharacterReviveIndex = objOutside;
QueueRevive = ds_list_create();
BonusDeath = false;
Delta = delta_time / 1000000;
SetReady = true;
MatchEndText = "";
MatchWait = 5;
MatchEnd = false;
MatchEndSurface = -1;
MatchEndSnapshot = false;
BonusTimeSecond = 0;
BonusTimeMinute = 0;
BonusTimeFrame = 0;
NormalCamera = true;
VolumeMusic = .5;
VolumeSound = 1;
IndexMusic = -1;
NoMusic = false;
Wait = 0;
VoidLimitStage = 0;
X1Limit = 0;
X2Limit = 0;
MenuActualLayer = 0;
MenuActualOption = 0;
CharacterPollierMov[0] = 0;
CharacterPollierMov[1] = 0;
CharacterPollierMov[2] = 0;
CharacterPollierMov[3] = 0;
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
CharacterSkin[0] = 0;
CharacterSkin[1] = 0;
CharacterSkin[2] = 0;
CharacterSkin[3] = 0;
CharacterColor0[0] = 0;
CharacterColor1[1] = 0;
CharacterColor2[2] = 0;
CharacterColor3[3] = 0;
CharacterColorHud[0] = make_color_rgb(255,83,47);
CharacterColorHud[1] = make_color_rgb(96,160,255);
CharacterColorHud[2] = make_color_rgb(153,153,153);
CharacterColorHud[3] = make_color_rgb(153,153,153);
DefaultLifeValue = 5;
ShowHUD = true;
ReadyTime = 0;
ReadyTimeAlarm = 30;
CanMoveGlobal = true;
CharacterLife[0] = DefaultLifeValue;
CharacterLife[1] = DefaultLifeValue;
CharacterLife[2] = DefaultLifeValue;
CharacterLife[3] = DefaultLifeValue;
TotalCharacters = 1;
StageId = 0;
ShowMask = false;
ShowMovsMask = false;

CharacterSkinSet = ds_map_create();
for (var i = 0 ; i < 4 ; i++)
{
	CharacterSkinSet[?"Base"+string(i)+"_0"] = scrStringToList("0,0,0");
	CharacterSkinSet[?"Base"+string(i)+"_1"] = scrStringToList("0,0,0");
	CharacterSkinSet[?"Base"+string(i)+"_2"] = scrStringToList("0,0,0");
	CharacterSkinSet[?"Base"+string(i)+"_3"] = scrStringToList("0,0,0");
	
	CharacterSkinSet[?"Skin"+string(i)+"_0"] = scrStringToList("0,0,0");
	CharacterSkinSet[?"Skin"+string(i)+"_1"] = scrStringToList("0,0,0");
	CharacterSkinSet[?"Skin"+string(i)+"_2"] = scrStringToList("0,0,0");
	CharacterSkinSet[?"Skin"+string(i)+"_3"] = scrStringToList("0,0,0");
}

#region Data

scrDataMov();
scrDataMusic();
scrDataCharacter();
scrDataStage();

#endregion
depth = -1000;
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
Limite = 120;
LimiteVelocidad = 0.025;
PlatformYLimit = 32;
CreateBot = false;
#endregion

#region Index
IndexImage2 = 0;
#endregion

#region Controls

DEFAULT_LeftButton = vk_left;
DEFAULT_RightButton = vk_right;
DEFAULT_DownButton = vk_down;
DEFAULT_UpButton = vk_up;
DEFAULT_JumpButton = ord("X");
DEFAULT_AttackButton = ord("C");
DEFAULT_StartButton = vk_enter;
DEFAULT_SelectButton = vk_space;

LeftButton = ord("A");
RightButton = ord("D");
DownButton = ord("S");
UpButton = ord("W");
JumpButton = ord("X");
AttackButton = ord("C");
StartButton = vk_enter;
SelectButton = vk_space;

_2LeftButton = vk_numpad4;
_2RightButton = vk_numpad6;
_2DownButton = vk_numpad5;
_2UpButton = vk_numpad8;
_2JumpButton = ord("I");
_2AttackButton = ord("O");
_2StartButton = vk_insert;
_2SelectButton = vk_space;


DEFAULT_2LeftButton = vk_numpad4;
DEFAULT_2RightButton = vk_numpad6;
DEFAULT_2DownButton = vk_numpad5;
DEFAULT_2UpButton = vk_numpad8;
DEFAULT_2JumpButton = ord("I");
DEFAULT_2AttackButton = ord("O");
DEFAULT_2StartButton = vk_backspace;
DEFAULT_2SelectButton = vk_alt;

ShowColissionButton = vk_f1;
ShowColissionMovsButton = vk_f2;
BattleLevel = false;
scrFileKeyLoad();
alarm[0] = 5;
#endregion

#region Create set
instance_create_depth(0,0,0,objSet);
#endregion