
var ground_check = place_meeting(x, y+1, oSolid)


// collisions
move_and_collide(xsp, ysp, oSolid)
move_and_collide(xsp, ysp, oWall)

// player movement
ysp += player_gravity
if xsp > 0 and place_meeting(x, y+1, oSolid)
{
	xsp -= 0.25
	if xsp < 0 {xsp = 0}
} 
else if xsp < 0 and place_meeting(x, y+1, oSolid)
{
	xsp += 0.25
	if xsp > 0 {xsp = 0}
}
if keyboard_check_pressed(vk_left) and ground_check
	{xsp =- 2.5}

if keyboard_check_pressed(vk_right) and ground_check
{xsp =+ 2.5}


// jumping
if place_meeting(x, y+1, oSolid)
{
	ysp = 0
	if keyboard_check_pressed(vk_up)
	{
		ysp =-4
	}
}

//leg logic
if (current_limb == "leg"){
	player_gravity = 0.1 //small gravity
    player_speed = 0.15
}
else
{
	player_gravity = 0.6 //big gravity
	player_speed = 0.25
}


// Cooldown logic
if (switch_cooldown > 0) 
{
	switch_cooldown -= 1
}
// Toggle limbs
if (keyboard_check_pressed(ord("1")) && switch_cooldown <= 0) 
{
	if place_meeting(x, y+1, oSolid)
	{
	    current_limb = "eye"
	    switch_cooldown = switch_delay
	}
}
if (keyboard_check_pressed(ord("2")) && switch_cooldown <= 0) 
{
    if place_meeting(x, y+1, oSolid)
	{
		current_limb = "leg"
	    switch_cooldown = switch_delay;
	}
}
	
if place_meeting(x, y, oSpike)
{
	room_restart();
}

//eye logic
//if (current_limb == "eye") {
//    screen_alpha = 1;
//} else {
//    screen_alpha = 0.3;
//}


if place_meeting(x, y, oWall)
{
	xsp = 0
}


// Animation and Sprite Management

if keyboard_check_pressed(vk_left)
{
	image_xscale = -1
}

if keyboard_check_pressed(vk_right)
{
	image_xscale = 1
}