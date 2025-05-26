if sprite_index == credit_anim {
	image_speed = 1
	sprite_index = crying_anim
}
if sprite_index == crying_anim && !namesAppeared{
	namesAppeared = true
	event_user(2)
	
}