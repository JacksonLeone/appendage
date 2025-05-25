function create_roomSelector(){
	// create list
	var _RoomSelector = instance_create_layer(20, 20, layer_get_id("Instances"),oRoomSelector)

	// Set Values
	with (_RoomSelector) {
		room_list = [tutorial, trust_fall, dodge_enemies, enemies2, nomnom, DialogueTest];
		room_names = ["Tutorial", "Trust\nFall", "Enemies", "Enemies\n2", "Mouth", "Dialogue\nTest"];

		button_width = 275;
		button_height = 70;
		button_vspace = 10; 

		//x,y positions:
		//if you want it horizontally centered, do this:
		//button_x = room_width / 2 - button_width / 2; 
		button_x = 730; 
		button_y_start = 25;
	}
	return _RoomSelector

}