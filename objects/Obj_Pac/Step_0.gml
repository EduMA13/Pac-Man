/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3778EFD6
/// @DnDArgument : "code" "$(13_10)if (keyboard_check_pressed(vk_right))$(13_10){$(13_10)	image_angle = 0;$(13_10)$(13_10)	direction = 0;$(13_10)$(13_10)	hspeed = sp;$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(vk_left))$(13_10){$(13_10)	image_angle = 180;$(13_10)$(13_10)	direction = 180;$(13_10)$(13_10)	hspeed = -sp;$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(vk_up))$(13_10){$(13_10)	image_angle = 90;$(13_10)$(13_10)	direction = 90;$(13_10)$(13_10)	vspeed = -sp;$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(vk_down))$(13_10){$(13_10)	direction = 270;$(13_10)$(13_10)	image_angle = 270;$(13_10)$(13_10)	vspeed = sp;$(13_10)}"

if (keyboard_check_pressed(vk_right))
{
	image_angle = 0;

	direction = 0;

	hspeed = sp;
}

if (keyboard_check_pressed(vk_left))
{
	image_angle = 180;

	direction = 180;

	hspeed = -sp;
}

if (keyboard_check_pressed(vk_up))
{
	image_angle = 90;

	direction = 90;

	vspeed = -sp;
}

if (keyboard_check_pressed(vk_down))
{
	direction = 270;

	image_angle = 270;

	vspeed = sp;
}