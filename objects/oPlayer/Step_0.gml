
ysp += 0.6

if xsp > 0 and ysp >= 0
{
	xsp -= 0.25
	if xsp < 0
	{
		xsp = 0
	}
} 
else if xsp < 0 and ysp >= 0
{
	xsp += 0.25
	if xsp > 0
	{
		xsp = 0
	}
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
		ysp =-3
	}
}


move_and_collide(xsp, ysp, oSolid)

//if place_meeting(x, y, oSolid)
