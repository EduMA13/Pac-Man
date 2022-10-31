/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B4C63CE
/// @DnDApplyTo : other
/// @DnDArgument : "var" "global.if_frozen"
/// @DnDArgument : "value" "1"
with(other) var l2B4C63CE_0 = global.if_frozen == 1;
if(l2B4C63CE_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59F558F4
	/// @DnDParent : 2B4C63CE
	/// @DnDArgument : "expr" "score+300"
	/// @DnDArgument : "var" "score"
	score = score+300;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 77610297
	/// @DnDApplyTo : other
	/// @DnDParent : 2B4C63CE
	/// @DnDArgument : "x" "384"
	/// @DnDArgument : "y" "380"
	with(other) {
	x = 384;
	y = 380;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 442951F7
	/// @DnDApplyTo : other
	/// @DnDParent : 2B4C63CE
	/// @DnDArgument : "direction" "90"
	with(other) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4AAF769B
	/// @DnDApplyTo : other
	/// @DnDParent : 2B4C63CE
	/// @DnDArgument : "speed" "1"
	with(other) speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 270BC27D
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60249597
	/// @DnDParent : 270BC27D
	/// @DnDArgument : "var" "global.is_dying"
	if(global.is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B361C4C
		/// @DnDParent : 60249597
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.is_dying"
		global.is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 06105FBA
		/// @DnDParent : 60249597
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l06105FBA_0 = PacDies_snd;
		if (!audio_is_playing(l06105FBA_0))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 484D48A8
			/// @DnDParent : 06105FBA
			speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6899A0D5
			/// @DnDApplyTo : {Obj_Pac}
			/// @DnDParent : 06105FBA
			/// @DnDArgument : "spriteind" "Sprt_pcfkndies"
			/// @DnDSaveInfo : "spriteind" "Sprt_pcfkndies"
			with(Obj_Pac) {
			sprite_index = Sprt_pcfkndies;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 73398C82
			/// @DnDParent : 06105FBA
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0479EB7D
		/// @DnDParent : 60249597
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(!(lives > 1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 628004FF
			/// @DnDParent : 0479EB7D
			/// @DnDArgument : "room" "GameOver"
			/// @DnDSaveInfo : "room" "GameOver"
			room_goto(GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 32936C1A
		/// @DnDParent : 60249597
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 636D2C2C
			/// @DnDParent : 32936C1A
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}
}