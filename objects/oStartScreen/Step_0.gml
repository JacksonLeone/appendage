// obj_start_screen: Step Event

// Fade-in effect
if (text_alpha < 1) {
    text_alpha += fade_in_speed;
}
if (!audio_is_playing(titlescreen_music)) {
    audio_play_sound(titlescreen_music, 1000, true);
}

//DISABLED DUE TO LEVEL SELECTOR BUTTONS
// Start game on any key press or mouse click
//if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left)) {
//    room_goto(tutorial);
//}
