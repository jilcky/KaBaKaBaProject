if (live_call()) return live_result;

draw_set_alpha(BlackTime);
draw_set_color(make_color_rgb(12, 12, 12));
draw_roundrect(0, 0, 1920, 1080, 0);
draw_set_alpha(1);