/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2EDE152B
/// @DnDArgument : "color" "$FF026607"
draw_set_colour($FF026607 & $ffffff);
draw_set_alpha(($FF026607 >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 011B8D96
/// @DnDArgument : "alpha" "0.50"
draw_set_alpha(0.50);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3B6052C6
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 6D3DFD33
/// @DnDArgument : "x" "25"
/// @DnDArgument : "y" "15"
/// @DnDArgument : "xscale" "0.75"
/// @DnDArgument : "yscale" "0.75"
/// @DnDArgument : "caption" ""REM: ""
/// @DnDArgument : "text" "global.REMCount"
draw_text_transformed(25, 15, string("REM: ") + string(global.REMCount), 0.75, 0.75, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 135D5758
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1472FC39
/// @DnDArgument : "x" "1250"
/// @DnDArgument : "y" "15"
/// @DnDArgument : "xscale" "0.75"
/// @DnDArgument : "yscale" "0.75"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "text" "global.totalScore"
draw_text_transformed(1250, 15, string("Score: ") + string(global.totalScore), 0.75, 0.75, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 7C65FEA9
draw_set_alpha(1);