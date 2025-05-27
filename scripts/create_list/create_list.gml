function create_list(){
	/// @arg x 
	/// @arg y
	/// @arg width
	/// @arg height
	/// @arg _type
 
	// Args
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _height = argument[3];
	var _type = argument[4];
 
	// create list
	var _list = instance_create_layer(_x, _y, layer_get_id("Instances"),oList)

	// Set Values
	with (_list) {
		width = _width
		height = _height
		type = _type


		// Populate list
		switch (_type) {
			case LIST_TYPE.GAME_OPTIONS:
				ds_list_add(options_list,["Settings", 0, [1,2,3,4]])
				ds_list_add(options_list,["Mode", 0, [1,2]])
				ds_list_add(options_list,["Difficulty", 0, ["Ez","Med","Slimey"]])
				ds_list_add(options_list,["Close", -1, []])
			break;
		}
		switch (_type) {
			case LIST_TYPE.SETTINGS:
				ds_list_add(options_list,["Music Volume %", 10, [0,10,20,30,40,50,60,70,80,90,100]])
				ds_list_add(options_list,["SFX Volume %", 10, ["0","10","20%","30%","40%","50%","60%","70%","80%","90%","100%"]])
				ds_list_add(options_list,["Close", -1, []])
			break;
		}
	}
	return _list;
}