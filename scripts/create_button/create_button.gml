function create_button(){
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _height = argument[3];
	var _text = argument[4];
	var _script = argument[5];
 
	// create list
	var _button = instance_create_layer(_x, _y, layer_get_id("Instances"),oButton)

	// Set Values
	with (_button) {
		button_width = _width
		button_height = _height
		text = _text
		var_script = _script
	}
	return _button

}