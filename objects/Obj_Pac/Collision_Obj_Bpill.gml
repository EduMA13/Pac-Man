/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6F744B03
/// @DnDArgument : "expr" "score+100"
/// @DnDArgument : "var" "score"
score = score+100;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 281BCE62
/// @DnDApplyTo : {Obj_Red}
/// @DnDArgument : "spriteind" "Sprt_Frozen"
/// @DnDSaveInfo : "spriteind" "Sprt_Frozen"
with(Obj_Red) {
sprite_index = Sprt_Frozen;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 328D8803
/// @DnDApplyTo : {Obj_Blue}
/// @DnDArgument : "spriteind" "Sprt_Frozen"
/// @DnDSaveInfo : "spriteind" "Sprt_Frozen"
with(Obj_Blue) {
sprite_index = Sprt_Frozen;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4CB86B50
/// @DnDApplyTo : {Obj_Orange}
/// @DnDArgument : "spriteind" "Sprt_Frozen"
/// @DnDSaveInfo : "spriteind" "Sprt_Frozen"
with(Obj_Orange) {
sprite_index = Sprt_Frozen;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 61261028
/// @DnDApplyTo : {Obj_Pink}
/// @DnDArgument : "spriteind" "Sprt_Frozen"
/// @DnDSaveInfo : "spriteind" "Sprt_Frozen"
with(Obj_Pink) {
sprite_index = Sprt_Frozen;
image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1B8922AE
/// @DnDApplyTo : other
/// @DnDArgument : "speed" "1"
with(other) speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7763BB4C
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.if_frozen"
global.if_frozen = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7975A1A2
/// @DnDArgument : "expr" "global.Bigpill + 1"
/// @DnDArgument : "var" "global.Bigpill"
global.Bigpill = global.Bigpill + 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D7A347F
/// @DnDArgument : "var" "global.LittlePill"
/// @DnDArgument : "value" "240"
if(global.LittlePill == 240)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29CF1FED
	/// @DnDParent : 2D7A347F
	/// @DnDArgument : "var" "global.Bigpill"
	/// @DnDArgument : "value" "4"
	if(global.Bigpill == 4)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3FCD63E9
		/// @DnDParent : 29CF1FED
		/// @DnDArgument : "room" "Win"
		/// @DnDSaveInfo : "room" "Win"
		room_goto(Win);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2CCA11E2
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0C2B2ECB
/// @DnDArgument : "steps" "250"
alarm_set(0, 250);