
// set color 
draw_set_color(merge_color(c_ltgray,c_white,hover))

// draw rounded rect
draw_roundrect(x,y,x+button_width,y+button_height,0)

//draw text
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x + button_width/2,y+button_height/2,text)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

//reset color
draw_set_color(c_white)