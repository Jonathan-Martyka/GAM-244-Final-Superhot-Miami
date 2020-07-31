
// Draw the background color first
draw_set_font(FontTitleBack);

draw_set_colour($FF999999 & $ffffff);
draw_set_alpha(($FF999999 >> 24) / $ff);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed((view_xport[0] + view_wport[0]) * 0.5, (view_yport[0] + view_hport[0]) * 0.5, string("SUPER HOT") + "", 1, 1, 0);

// Draw the foreground next
draw_set_font(FontTitleFront);

draw_set_colour($FF0000CC & $ffffff);
draw_set_alpha(($FF0000CC >> 24) / $ff);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed((view_xport[0] + view_wport[0]) * 0.5, (view_yport[0] + view_hport[0]) * 0.5, string("SUPER HOT") + "", 1, 1, 0);

// Draw the Start message
draw_set_font(FontTitleBackSmall);

draw_set_colour($FF999999 & $ffffff);
draw_set_alpha(($FF999999 >> 24) / $ff);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed((view_xport[0] + view_wport[0]) * 0.5, ((view_yport[0] + view_hport[0]) * 0.5) + 100, string("SPACE TO START") + "", 1, 1, 0);

// Draw the foreground next
draw_set_font(FontTitleFrontSmall);

draw_set_colour($FF0000CC & $ffffff);
draw_set_alpha(($FF0000CC >> 24) / $ff);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed((view_xport[0] + view_wport[0]) * 0.5, ((view_yport[0] + view_hport[0]) * 0.5) + 100, string("SPACE TO START") + "", 1, 1, 0);
