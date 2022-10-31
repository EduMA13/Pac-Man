/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 705EAE60
/// @DnDApplyTo : other
/// @DnDArgument : "var" "global.if_frozen"
/// @DnDArgument : "value" "1"
with(other) var l705EAE60_0 = global.if_frozen == 1;
if(l705EAE60_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F5FC75F
	/// @DnDParent : 705EAE60
	/// @DnDArgument : "expr" "score+300"
	/// @DnDArgument : "var" "score"
	score = score+300;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3A5BC999
	/// @DnDApplyTo : other
	/// @DnDParent : 705EAE60
	/// @DnDArgument : "x" "384"
	/// @DnDArgument : "y" "380"
	with(other) {
	x = 384;
	y = 380;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 1CE0099C
	/// @DnDApplyTo : other
	/// @DnDParent : 705EAE60
	/// @DnDArgument : "direction" "90"
	with(other) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7F40E3A8
	/// @DnDApplyTo : other
	/// @DnDParent : 705EAE60
	/// @DnDArgument : "speed" "1"
	with(other) speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 705B460B
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E5DB0B4
	/// @DnDParent : 705B460B
	/// @DnDArgument : "var" "global.is_dying"
	if(global.is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D7216AB
		/// @DnDParent : 1E5DB0B4
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.is_dying"
		global.is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 3FBC7AA9
		/// @DnDParent : 1E5DB0B4
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l3FBC7AA9_0 = PacDies_snd;
		if (!audio_is_playing(l3FBC7AA9_0))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 47310B27
			/// @DnDParent : 3FBC7AA9
			speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 748BB9E2
			/// @DnDApplyTo : {Obj_Pac}
			/// @DnDParent : 3FBC7AA9
			/// @DnDArgument : "spriteind" "Sprt_pcfkndies"
			/// @DnDSaveInfo : "spriteind" "Sprt_pcfkndies"
			with(Obj_Pac) {
			sprite_index = Sprt_pcfkndies;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 383FA10C
			/// @DnDParent : 3FBC7AA9
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78EC073E
		/// @DnDParent : 1E5DB0B4
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(!(lives > 1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 1CDC7EE4
			/// @DnDParent : 78EC073E
			/// @DnDArgument : "room" "GameOver"
			/// @DnDSaveInfo : "room" "GameOver"
			room_goto(GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 084FDEC1
		/// @DnDParent : 1E5DB0B4
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 01691B7C
			/// @DnDParent : 084FDEC1
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}
}