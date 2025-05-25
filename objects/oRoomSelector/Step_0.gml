//gets mouse position
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mouse_check_button_pressed(mb_left)){
for (var i = 0; i < array_length(room_list); i++) {
    var btn_x = button_x;
    var btn_y = button_y_start + i * (button_height + button_vspace);
    
	//checks if mouse is over button i
    if (mx > btn_x && mx < btn_x + button_width &&
        my > btn_y && my < btn_y + button_height) {
    room_goto(room_list[i]);
    }
}
}


