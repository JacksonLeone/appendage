// List Types
enum LIST_TYPE {
	GAME_OPTIONS,
	SETTINGS
}
 
// Option Properties
enum PR {
	NAME,
	SELECTED, 
	VALUES
}

if (!variable_global_exists("SFX_vol")){
	global.SFX_vol = 100;
}
if (!variable_global_exists("music_vol")){
	global.music_vol = 100;
}