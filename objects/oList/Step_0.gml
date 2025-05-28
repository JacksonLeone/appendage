// mouse input
var _mouseX = device_mouse_x_to_gui(0)
var _mouseY = device_mouse_y_to_gui(0)
var _mousePressed = mouse_check_button_pressed(mb_left)
show_debug_message(global.music_vol);
// Operate on list
var _size = ds_list_size(options_list)

for (var i = 0; i<_size; i++) {
	//array data
	var _arr = options_list[| i]
	var _name = _arr[PR.NAME]
	var _sel = _arr[PR.SELECTED]
	var _vals = _arr[PR.VALUES]
	
	// coordinates
	var _x1 = x + padding
	var _y1 = y + padding + itemH * i
	var _x2 = x + width - padding
	var _y2 = _y1 + itemH
	
	// Get if hovering
	var _hover = point_in_rectangle(_mouseX,_mouseY,_x1,_y1,_x2,_y2)
	
	if _hover {
		// set hover var
		hoverID = i
		
		// select
		if _sel == -1 && _mousePressed {
			switch (_name) {
				case "Close":
					instance_destroy()
				break;
			}
		}
		
		// change value
		if _sel > -1 {
			var _wheel = mouse_wheel_up() - mouse_wheel_down()
			
			//wheel input
			if _wheel != 0 {
				_sel += _wheel
				
				// clamp
				_sel = clamp(_sel, 0, array_length(_vals)-1)
				
				// apply to list
				_arr[@ PR.SELECTED] = _sel
				
				// apply to game options
				if type == LIST_TYPE.GAME_OPTIONS {
					switch _name {
						case "Players":
							global.game_players = _vals[_sel]
						break;
						
						case "Mode":
							global.game_mode = _vals[_sel]
						break;
					}
				}
				if type == LIST_TYPE.SETTINGS {
					switch _name {
						case "Music Volume %":
							global.music_vol = _vals[_sel]
							audio_group_set_gain(music,global.music_vol/10,0)
						break;
						
						case "SFX Volume %":
							global.SFX_vol = _vals[_sel]
							audio_group_set_gain(music,global.SFX_vol/10,0)
						break;
					}
				}
			} 
		}
	}
}