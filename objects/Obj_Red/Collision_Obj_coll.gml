/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 561F510D
/// @DnDArgument : "direction" "90,180,0,270"
direction = choose(90,180,0,270);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3E259A26
/// @DnDArgument : "speed" "2.5"
speed = 2.5;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04DFFBF1
/// @DnDArgument : "code" "if (direction ==0 && !global.if_frozen){$(13_10)sprite_index = Sprt_RedRight;$(13_10)}$(13_10)$(13_10)if (direction ==180 && !global.if_frozen){$(13_10)sprite_index = Sprt_RedLeft;$(13_10)}$(13_10)$(13_10)if (direction ==90 && !global.if_frozen){$(13_10)sprite_index = Sprt_RedUp;$(13_10)}$(13_10)$(13_10)if (direction ==270 && !global.if_frozen ){$(13_10)sprite_index = Sprt_RedDown;$(13_10)}"
if (direction ==0 && !global.if_frozen){
sprite_index = Sprt_RedRight;
}

if (direction ==180 && !global.if_frozen){
sprite_index = Sprt_RedLeft;
}

if (direction ==90 && !global.if_frozen){
sprite_index = Sprt_RedUp;
}

if (direction ==270 && !global.if_frozen ){
sprite_index = Sprt_RedDown;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3096BDB2
alarm_set(0, 30);