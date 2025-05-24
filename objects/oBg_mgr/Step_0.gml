// In a controller object's Step Event
var player_x = oPlayer.x;
var player_y = oPlayer.y;

// Position the effect layer to match the player
layer_x("blur_effect", player_x);
layer_y("blur_effect", player_y);
