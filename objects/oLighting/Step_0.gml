// Get player's current limb
var p = oPlayer

// Decide how dark the screen should be
var darkness = 0;
if (p.current_limb != "eye") {
    darkness = 0.7
}

// Draw transparent black rectangle over screen
draw_set_alpha(darkness); //set local alpha
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1); // Reset alpha
