/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 311D7B03
/// @DnDApplyTo : other
/// @DnDArgument : "var" "global.if_frozen"
/// @DnDArgument : "value" "1"
with(other) var l311D7B03_0 = global.if_frozen == 1;
if(l311D7B03_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56553EBA
	/// @DnDParent : 311D7B03
	/// @DnDArgument : "expr" "score+300"
	/// @DnDArgument : "var" "score"
	score = score+300;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7DE1B8E8
	/// @DnDApplyTo : other
	/// @DnDParent : 311D7B03
	/// @DnDArgument : "x" "384"
	/// @DnDArgument : "y" "380"
	with(other) {
	x = 384;
	y = 380;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 5756041E
	/// @DnDApplyTo : other
	/// @DnDParent : 311D7B03
	/// @DnDArgument : "direction" "90"
	with(other) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5B78BDBE
	/// @DnDApplyTo : other
	/// @DnDParent : 311D7B03
	/// @DnDArgument : "speed" "1"
	with(other) speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 106817EB
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E438D6E
	/// @DnDParent : 106817EB
	/// @DnDArgument : "var" "global.is_dying"
	if(global.is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20BDA0B0
		/// @DnDParent : 4E438D6E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.is_dying"
		global.is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 46DEC68C
		/// @DnDParent : 4E438D6E
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l46DEC68C_0 = PacDies_snd;
		if (!audio_is_playing(l46DEC68C_0))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 057948BA
			/// @DnDParent : 46DEC68C
			speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 357545B9
			/// @DnDApplyTo : {Obj_Pac}
			/// @DnDParent : 46DEC68C
			/// @DnDArgument : "spriteind" "Sprt_pcfkndies"
			/// @DnDSaveInfo : "spriteind" "Sprt_pcfkndies"
			with(Obj_Pac) {
			sprite_index = Sprt_pcfkndies;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 10910E59
			/// @DnDParent : 46DEC68C
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F56A41D
		/// @DnDParent : 4E438D6E
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(!(lives > 1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 331EC3F5
			/// @DnDParent : 2F56A41D
			/// @DnDArgument : "room" "GameOver"
			/// @DnDSaveInfo : "room" "GameOver"
			room_goto(GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0A0CE27E
		/// @DnDParent : 4E438D6E
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 729E9B35
			/// @DnDParent : 0A0CE27E
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}
}