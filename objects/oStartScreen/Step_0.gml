// obj_start_screen: Step Event

// Fade-in effect
if (text_alpha < 1) {
    text_alpha += fade_in_speed;
}

//DISABLED DUE TO LEVEL SELECTOR BUTTONS
// Start game on any key press or mouse click
//if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left)) {
//    room_goto(tutorial);
//}
