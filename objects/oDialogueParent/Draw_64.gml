if (showing_dialog) {
	var text_x = 30;
	var text_y = 18;
	var height = 32;
	var padding_x = 15;
	var padding_y = 11;
	var text_padding = 110;
	
	display_set_gui_size(view_wport[0], view_hport[0]);
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_sprite(sDialogueBox, 0, x, y);
	if (current_dialog.sprite != -1) {
		draw_sprite(current_dialog.sprite, 1, x + padding_x, y + padding_y);
	}
	
	draw_text_ext(x + text_padding, y + padding_y, current_dialog.message, 16, 250)
	
	alpha = lerp(alpha, 1, 0.06)
}

draw_set_alpha(1);