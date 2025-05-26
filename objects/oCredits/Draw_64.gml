if namesAppeared {
	// obj_start_screen: Draw Event
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	// Draw title
	draw_set_color(c_black);

	// Draw start text with fade-in
	draw_set_alpha(text_alpha);
	draw_text(room_width / 2 + 200, 10, escape_text);
	draw_text(200, 200, coding_text);
	
	draw_text(880, 290, art_text);
	draw_text(880, 50, story_text);
	draw_set_alpha(1); // Reset alpha

	end_button_width = 150
	end_button_height = 60
	create_button(20,80, end_button_width, end_button_height,"Menu",on_click_main_menu)
}