// obj_start_screen: Draw Event
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw title
draw_set_color(c_white);
draw_text(room_width / 2, room_height / 2 - 50, title_text);

// Draw start text with fade-in
draw_set_alpha(text_alpha);
draw_text(room_width / 2, room_height / 2 + 20, start_text);
draw_set_alpha(1); // Reset alpha
