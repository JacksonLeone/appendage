if (current_limb != "leg")
{
		ysp += 0.6 //big gravity
	if xsp > 0 and ysp >= 0
	{
		xsp -= 0.25
		if xsp < 0
		{xsp = 0}
	} 
	else if xsp < 0 and ysp >= 0
	{
		xsp += 0.25
		if xsp > 0
		{xsp = 0}
	}
	if keyboard_check_pressed(vk_left)
		{xsp =- 2.5}

	if keyboard_check_pressed(vk_right)
	{xsp =+ 2.5}
}

//leg logic
if (current_limb == "leg"){
	ysp += 0.1 //small gravity
    if (keyboard_check(vk_left)) {
        xsp = -1.5;
    }
    if (keyboard_check(vk_right)) {
        xsp = 1.5;
    }
}

if (current_limb == "mouth") {
    var scale = 2;
    
    // Adjust position to keep bottom fixed; otherwise you get stuck to the ground
    var delta = (scale - image_yscale) * sprite_height;
    y -= delta; // Move up to compensate

    image_xscale = scale;
    image_yscale = scale;
}
else {
    image_xscale = 1;
    image_yscale = 1;
}
	
if keyboard_check_pressed(vk_left)
{
	xsp =- 2.5
	image_xscale = -1
}

if keyboard_check_pressed(vk_right)
{
	xsp =+ 2.5
	image_xscale = 1
}

if place_meeting(x, y+1, oSolid)
{
	ysp = 0
	if keyboard_check_pressed(vk_up)
	{
		ysp =-4
	}
}

// Cooldown logic
if (switch_cooldown > 0) 
{
	switch_cooldown -= 1
}
// Toggle limbs
if (keyboard_check_pressed(ord("1")) && switch_cooldown <= 0) 
{
    current_limb = "eye"
    switch_cooldown = switch_delay
}
if (keyboard_check_pressed(ord("2")) && switch_cooldown <= 0) 
{
    current_limb = "leg"
    switch_cooldown = switch_delay;
}
if (keyboard_check_pressed(ord("3")) && switch_cooldown <= 0) {
    current_limb = "mouth"
	//gravity_multiplier += 0.1;
	 switch_cooldown = switch_delay;
}
	
if place_meeting(x, y, oSpike)
{
	room_restart();
}

if place_meeting(x, y, oEnemy)
{
	room_restart();
}

if (place_meeting(x, y, oFlag))
{
    room_goto_next();
}

//eye logic
//if (current_limb == "eye") {
//    screen_alpha = 1;
//} else {
//    screen_alpha = 0.3;
//}

move_and_collide(xsp, ysp, oSolid)

//if place_meeting(x, y, oSolid)