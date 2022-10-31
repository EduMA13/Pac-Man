/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4767AAFC
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4285C6C0
/// @DnDApplyTo : {Obj_Red}
with(Obj_Red) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1775AD7D
/// @DnDApplyTo : {Obj_Blue}
with(Obj_Blue) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 48E7C621
/// @DnDApplyTo : {Obj_Orange}
with(Obj_Orange) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7EFD3F4B
/// @DnDApplyTo : {Obj_Pink}
with(Obj_Pink) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5D19A573
/// @DnDArgument : "expr" "lives-1"
/// @DnDArgument : "var" "lives"
lives = lives-1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0AAB207A
/// @DnDArgument : "xpos" "384"
/// @DnDArgument : "ypos" "600"
/// @DnDArgument : "objectid" "Obj_Pac"
/// @DnDArgument : "layer" ""Instances_2""
/// @DnDSaveInfo : "objectid" "Obj_Pac"
instance_create_layer(384, 600, "Instances_2", Obj_Pac);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0C757D95
/// @DnDArgument : "xpos" "382"
/// @DnDArgument : "ypos" "382"
/// @DnDArgument : "objectid" "Obj_Red"
/// @DnDArgument : "layer" ""Instances_2""
/// @DnDSaveInfo : "objectid" "Obj_Red"
instance_create_layer(382, 382, "Instances_2", Obj_Red);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 75EE843F
/// @DnDArgument : "xpos" "382"
/// @DnDArgument : "ypos" "382"
/// @DnDArgument : "objectid" "Obj_Blue"
/// @DnDArgument : "layer" ""Instances_2""
/// @DnDSaveInfo : "objectid" "Obj_Blue"
instance_create_layer(382, 382, "Instances_2", Obj_Blue);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4532712C
/// @DnDArgument : "xpos" "382"
/// @DnDArgument : "ypos" "382"
/// @DnDArgument : "objectid" "Obj_Orange"
/// @DnDArgument : "layer" ""Instances_2""
/// @DnDSaveInfo : "objectid" "Obj_Orange"
instance_create_layer(382, 382, "Instances_2", Obj_Orange);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6EDAB69D
/// @DnDArgument : "xpos" "382"
/// @DnDArgument : "ypos" "382"
/// @DnDArgument : "objectid" "Obj_Pink"
/// @DnDArgument : "layer" ""Instances_2""
/// @DnDSaveInfo : "objectid" "Obj_Pink"
instance_create_layer(382, 382, "Instances_2", Obj_Pink);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FF77F90
/// @DnDArgument : "var" "global.is_dying"
global.is_dying = 0;