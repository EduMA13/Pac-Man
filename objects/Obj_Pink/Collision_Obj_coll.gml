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
/// @DnDArgument : "code" "if (direction ==0 && !global.if_frozen){$(13_10)sprite_index = Sprt_PinkRight;$(13_10)}$(13_10)$(13_10)if (direction ==180 && !global.if_frozen){$(13_10)sprite_index = Sprt_PinkLeft;$(13_10)}$(13_10)$(13_10)if (direction ==90 && !global.if_frozen){$(13_10)sprite_index = Sprt_PinkUp;$(13_10)}$(13_10)$(13_10)if (direction ==270 && !global.if_frozen ){$(13_10)sprite_index = Sprt_PinkDown;$(13_10)}"
if (direction ==0 && !global.if_frozen){
sprite_index = Sprt_PinkRight;
}

if (direction ==180 && !global.if_frozen){
sprite_index = Sprt_PinkLeft;
}

if (direction ==90 && !global.if_frozen){
sprite_index = Sprt_PinkUp;
}

if (direction ==270 && !global.if_frozen ){
sprite_index = Sprt_PinkDown;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3096BDB2
alarm_set(0, 30);