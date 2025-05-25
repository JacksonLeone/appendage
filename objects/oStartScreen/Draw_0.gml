// obj_start_screen: Draw Event
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw title
draw_set_color(c_black);
draw_text(room_width / 2, room_height / 2 - 50, title_text)

// Draw start text with fade-in
draw_set_alpha(text_alpha);
draw_text(room_width / 2, room_height  - 40, start_text);
draw_set_alpha(1); // Reset alpha

create_button(20,80, _width, _height,"Start",room_goto_next)
create_button(20,_height+120,_width,_height,"Select\nLevel",create_roomSelector)
create_button(20,(_height*2)+160,_width,_height,"Credits",on_click_credits)

