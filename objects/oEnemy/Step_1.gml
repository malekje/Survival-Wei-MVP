// When enemy hp is 0 , he will die and jump to the other side
if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,oDead))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_x(3,direction)-2;
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
	}
	
	// with (mygun) instance_destroy();
	instance_destroy();
}