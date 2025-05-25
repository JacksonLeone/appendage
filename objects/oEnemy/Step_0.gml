move_timer += 1;

if (move_timer > move_duration) {
    dir = irandom(3); // Pick a new direction
    move_duration = 10 + irandom(5);
    move_timer = 0;
}

//randomly picks a direction to move
switch (dir) {
    case 0: y -= speed; break; // up
    case 1: y += speed; break; // down
    case 2: x -= speed; break; // left
    case 3: x += speed; break; // right
}

// Reverse direction if hitting wall
if (place_meeting(x + lengthdir_x(speed, dir*90), y + lengthdir_y(speed, dir*90), all)) {
    dir = irandom(3);
}

//clamp(a,b,c) keeps a within bounds of [b,c].
//here, bounds position within room.
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);
