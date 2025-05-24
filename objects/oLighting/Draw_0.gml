// Find the player
var p = instance_exists(oPlayer) ? oPlayer : noone;

var screen_cx = display_get_width() / 2;
var screen_cy = display_get_height() / 2;

if (p != noone && p.current_limb != "eye") {
    draw_sprite_ext(
        sBlur, 0,
        0, 0,
        1, 1, 0, c_white, 0.8
    );
}

////Only draw blur if limb is not "eye"
//if (p != noone && p.current_limb != "eye") {
//    var cam_x = camera_get_view_x(view_camera[0]);
//    var cam_y = camera_get_view_y(view_camera[0]);
//    var cam_w = camera_get_view_width(view_camera[0]);
//    var cam_h = camera_get_view_height(view_camera[0]);

//    draw_set_alpha(1);
//    draw_set_color(c_white);

//    // Draw vignette centered on screen
//    draw_sprite_ext(
//        sBlur, 0,
//        cam_x + cam_w / 2, cam_y + cam_h / 2,
//        1, 1, 0, c_white, 1
//    );

//    draw_set_alpha(1);
//}
