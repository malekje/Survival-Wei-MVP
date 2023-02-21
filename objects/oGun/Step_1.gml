x = oPlayer.x;
y = oPlayer.y+10;

// Pointing gun to mouse
image_angle = point_direction(x,y,mouse_x,mouse_y);

// Firing bullet
firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{ 
	firingdelay = 8;
	audio_play_sound(Gunshot_Sound_Effect,5,false);
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}

