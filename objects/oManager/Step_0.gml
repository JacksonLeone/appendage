if keyboard_check_pressed(vk_escape){
	global.menuOpen = !global.menuOpen
	if global.menuOpen{
		draw_set_font(P2S_font)
		event_user(0)
	}
	else{
		event_user(1)
	}
}