/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 6025087F
/// @DnDArgument : "soundid" "Pellet_snd"
/// @DnDSaveInfo : "soundid" "Pellet_snd"
audio_play_sound(Pellet_snd, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6624DEA6
/// @DnDArgument : "expr" "score+10"
/// @DnDArgument : "var" "score"
score = score+10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0BBD285B
/// @DnDArgument : "expr" "global.LittlePill +1"
/// @DnDArgument : "var" "global.LittlePill"
global.LittlePill = global.LittlePill +1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FE05A89
/// @DnDArgument : "var" "global.LittlePill"
/// @DnDArgument : "value" "240"
if(global.LittlePill == 240)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BA4C212
	/// @DnDParent : 1FE05A89
	/// @DnDArgument : "var" "global.Bigpill"
	/// @DnDArgument : "value" "4"
	if(global.Bigpill == 4)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 22894046
		/// @DnDParent : 2BA4C212
		/// @DnDArgument : "room" "Win"
		/// @DnDSaveInfo : "room" "Win"
		room_goto(Win);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 71EA8002
instance_destroy();