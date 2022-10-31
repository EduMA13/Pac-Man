/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F8232AF
/// @DnDApplyTo : other
/// @DnDArgument : "var" "global.if_frozen"
/// @DnDArgument : "value" "1"
with(other) var l3F8232AF_0 = global.if_frozen == 1;
if(l3F8232AF_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7912DD6D
	/// @DnDParent : 3F8232AF
	/// @DnDArgument : "expr" "score+300"
	/// @DnDArgument : "var" "score"
	score = score+300;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 68639FC4
	/// @DnDApplyTo : other
	/// @DnDParent : 3F8232AF
	/// @DnDArgument : "x" "384"
	/// @DnDArgument : "y" "380"
	with(other) {
	x = 384;
	y = 380;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 1754F544
	/// @DnDApplyTo : other
	/// @DnDParent : 3F8232AF
	/// @DnDArgument : "direction" "90"
	with(other) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3DD81AE6
	/// @DnDApplyTo : other
	/// @DnDParent : 3F8232AF
	/// @DnDArgument : "speed" "1"
	with(other) speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 69EA89B2
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50CA6312
	/// @DnDParent : 69EA89B2
	/// @DnDArgument : "var" "global.is_dying"
	if(global.is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E519C84
		/// @DnDParent : 50CA6312
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.is_dying"
		global.is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 6B546F2C
		/// @DnDParent : 50CA6312
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l6B546F2C_0 = PacDies_snd;
		if (!audio_is_playing(l6B546F2C_0))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 43E454C6
			/// @DnDParent : 6B546F2C
			speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1C9DACED
			/// @DnDApplyTo : {Obj_Pac}
			/// @DnDParent : 6B546F2C
			/// @DnDArgument : "spriteind" "Sprt_pcfkndies"
			/// @DnDSaveInfo : "spriteind" "Sprt_pcfkndies"
			with(Obj_Pac) {
			sprite_index = Sprt_pcfkndies;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 676AFE75
			/// @DnDParent : 6B546F2C
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4260176A
		/// @DnDParent : 50CA6312
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(!(lives > 1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 3EB4D6B8
			/// @DnDParent : 4260176A
			/// @DnDArgument : "room" "GameOver"
			/// @DnDSaveInfo : "room" "GameOver"
			room_goto(GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7C3408F2
		/// @DnDParent : 50CA6312
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 3875300D
			/// @DnDParent : 7C3408F2
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}
}