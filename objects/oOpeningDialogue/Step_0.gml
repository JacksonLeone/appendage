if (showing_dialog == false) {
	if (dialog.count() <= 0) {
		instance_destroy();
		room_goto_next();
		return;
	}
	
	current_dialog = dialog.pop()
	showing_dialog = true;
	
} else {
	if (keyboard_check_released(key_next)) {
		showing_dialog = false;
		alpha = 0;
	}
}