/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 68880A09
/// @DnDArgument : "soundid" "FirstLevelStart_snd"
/// @DnDSaveInfo : "soundid" "FirstLevelStart_snd"
audio_play_sound(FirstLevelStart_snd, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2C1BF13C
/// @DnDArgument : "var" "if_frozen"
global.if_frozen = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3D094AAD
/// @DnDArgument : "var" "is_dying"
global.is_dying = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5FFA7B3D
/// @DnDArgument : "var" "Bigpill"
global.Bigpill = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 382851FB
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "lives"
lives = 3;