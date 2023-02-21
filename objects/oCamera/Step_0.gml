// Update camera

// destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	if ((follow).object_index == oPDead)
	{
		x = xTo;
		y = yTo;
	}
}

// Object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

// Camera collision
// x = clamp(x,view_w_half,room_width-view_w_half);

// camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);