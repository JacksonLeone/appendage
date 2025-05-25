/// @description Create UI

var _width = 320
var _height = 170

create_button(40,40, _width, _height,"Play",on_click)
create_button(40,40+_height+40,_width,_height,"Options",on_click)
create_button(40,40+(_height+40)*2,_width,_height,"Quit",on_click)

// create list at coords, with size, of type game_options
create_list(400,40,750,240,LIST_TYPE.GAME_OPTIONS)
create_list(400,400,750,240,LIST_TYPE.SETTINGS)