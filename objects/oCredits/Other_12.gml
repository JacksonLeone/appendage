/// @description: draw credit text

// obj_start_screen: Draw Event
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw title
draw_set_color(c_black);

// Draw start text with fade-in
draw_set_alpha(text_alpha);
draw_text(room_width / 2, room_height  - 40, credits_text);
draw_set_alpha(1); // Reset alpha

_width = 150
_height = 60
create_button(20,80, _width, _height,"Menu",on_click_main_menu)