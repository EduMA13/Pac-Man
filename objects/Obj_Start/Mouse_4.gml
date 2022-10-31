/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 440D5E47
/// @DnDArgument : "soundid" "MainMenu"
/// @DnDSaveInfo : "soundid" "MainMenu"
var l440D5E47_0 = MainMenu;
if (audio_is_playing(l440D5E47_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2329D059
	/// @DnDParent : 440D5E47
	/// @DnDArgument : "soundid" "MainMenu"
	/// @DnDSaveInfo : "soundid" "MainMenu"
	audio_stop_sound(MainMenu);

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1BD51473
	/// @DnDParent : 440D5E47
	/// @DnDArgument : "room" "Sala1"
	/// @DnDSaveInfo : "room" "Sala1"
	room_goto(Sala1);
}