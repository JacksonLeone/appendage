// Toggle limbs
if (keyboard_check_pressed(ord("1")) && switch_cooldown <= 0) 
{
    current_limb = "eye"
    switch_cooldown = switch_delay
}
if (keyboard_check_pressed(ord("2")) && switch_cooldown <= 0) 
{
    current_limb = "crawl"
    switch_cooldown = switch_delay;
}
if (keyboard_check_pressed(ord("3")) && switch_cooldown <= 0) 
{
    current_limb = "leg"
    switch_cooldown = switch_delay;
}

//big gravity
ysp += 0.6 

// if you were moving, stop (friction bby)
if xsp > 0 and ysp >= 0
{
	xsp -= 0.25
	if xsp < 0 {
		xsp = 0}
} 
else if xsp < 0 and ysp >= 0
{
	xsp += 0.25
	if xsp > 0
	{xsp = 0}
}

// enter eye state, no movement
if (current_limb == "eye"){
	legs_sprouted = false
	// if eyes haven't sprouted, do that
	if !eyes_sprouted{
		image_speed = 1
		sprite_index = eyes_anim
		eyes_sprouted = true
	}
	if image_index == 12{
		image_speed = 1
		sprite_index = eyes_idle;
	}
}

// crawl movement state
if (current_limb == "crawl"){
	eyes_sprouted = false
	legs_sprouted = false
	ysp += 0.1 //small gravity
    if (keyboard_check(vk_left)) {
        xsp = -0.3;
		image_xscale = -1
		image_speed = 0.7
		sprite_index = scoot_palindrone_anim
    }
    if (keyboard_check(vk_right)) {
        xsp = 0.3;
		image_xscale = 1
		image_speed = 0.7
		sprite_index = scoot_palindrone_anim
    }
	if xsp == 0 {
		image_speed = 1
		sprite_index = idle_anim
	}
}	

//leg logic
if (current_limb == "leg"){
	eyes_sprouted = false
	// set animation to legs sprouting
	// IF legs haven't already sprouted
	if !legs_sprouted{
		image_speed = 1
		sprite_index = leg_sprout
		legs_sprouted = true
	}
	if image_index == 9{
		image_speed = 1
		sprite_index = leg_idle;
	}else{
		sprite_index = leg_idle
	}
	// Leg movementZ
	ysp += 0.1 //small gravity
    if (keyboard_check(vk_left)) {
        xsp = -1.5;
		image_xscale = -1
		image_speed = 1
		sprite_index = walk_anim
    }
    if (keyboard_check(vk_right)) {
        xsp = 1.5;
		image_xscale = 1
		image_speed = 1
		sprite_index = walk_anim
    }
	if xsp == 0 {
		sprite_index = leg_idle
	}
}	

// if you're on the ground, be able to jump
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

move_and_collide(xsp, ysp, oSolid)

//if place_meeting(x, y, oSolid)


// Animation States
if flip_direction {
	image_xscale = -1
}else{
	image_xscale = 1
}

if xsp > 0 {
	flip_direction = false
	//sprite_index = 
}else if xsp < 0 {
	flip_direction = true
}else{
	
}
