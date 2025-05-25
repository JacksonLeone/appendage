/// @description Create UI

var _width = 250
var _height = 80

create_button(40,80, _width, _height,"Play",on_click_play)
create_button(40,_height+120,_width,_height,"Options",on_click)
create_button(40,(_height*2)+160,_width,_height,"Menu",on_click_main_menu)

// create list at coords, with size, of type game_options
create_list(300,40,670,210,LIST_TYPE.GAME_OPTIONS)
create_list(300,280,670,180,LIST_TYPE.SETTINGS)