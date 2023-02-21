// Player Input
if (hcontrol)
{
key_left = keyboard_check(vk_left) or keyboard_check(ord("Q"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) or keyboard_check(ord("Z"));
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}
// Movement calculation
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

// Jumping
if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7;
}

// Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}

x = x + hsp;

// Vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}

y = y + vsp;

// Animation

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerAirBorn;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	if (sprite_index == sPlayerAirBorn) audio_play_sound(landing,4,false);
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerRun;
	}
}
// Image turning to the opposing direction
if (hsp != 0) image_xscale = sign(hsp);