/// @description Create UI

var _width = 220
var _height = 150

create_button(40,40, _width, _height,"Play",on_click)
create_button(40,_height+40,_width,_height,"Options",on_click)
create_button(40,(_height*2)+40,_width,_height,"Quit",on_click)

// create list at coords, with size, of type game_options
create_list(300,40,670,210,LIST_TYPE.GAME_OPTIONS)
create_list(300,280,670,180,LIST_TYPE.SETTINGS)