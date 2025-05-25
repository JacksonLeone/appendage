//gets mouse position
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for (var i = 0; i < array_length(room_list); i++) {
    var btn_x = button_x;
    var btn_y = button_y_start + i * (button_height + button_vspace);
    
    var btn_center_x = btn_x + button_width / 2;
    var btn_center_y = btn_y + button_height / 2;

    //draw background
    draw_set_color(c_dkgray);
    draw_rectangle(btn_x, btn_y, btn_x + button_width, btn_y + button_height, false);

    //highlight green when hovering
    if (mx > btn_x && mx < btn_x + button_width && my > btn_y && my < btn_y + button_height) {
        draw_set_color(c_lime);
        draw_rectangle(btn_x, btn_y, btn_x + button_width, btn_y + button_height, true);
    }

    //draw txt
    draw_set_color(c_white);
    draw_text(btn_center_x, btn_center_y, room_names[i]);
}
