var _hover = get_hover()
var _click = _hover && mouse_check_button_pressed(mb_left)

//hover
hover = lerp(hover,_hover, 0.1)

//click
if _click && var_script >= 0 { 
	script_execute(var_script)
}
