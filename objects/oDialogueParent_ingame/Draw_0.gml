if (showing_dialog) {
	var height = 32;
	var padding_x = 30;
	var padding_y = 22;
	var text_padding = 110;
	
	draw_set_font(fDialogue)
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_sprite(sDialogueBox_ingame, 0, oPlayer.x-400, oPlayer.y+50);
	if (current_dialog.sprite != -1) {
		draw_sprite_ext(current_dialog.sprite, 1, oPlayer.x-400 + padding_x, oPlayer.y +50+ padding_y,2,2,0,-1,1)
	}
	
	draw_text_ext_transformed(oPlayer.x - 300 + text_padding, oPlayer.y+50 + padding_y, current_dialog.message, 16, 250,2,2,0)
	
	alpha = lerp(alpha, 1, 0.06)
}

draw_set_alpha(1);