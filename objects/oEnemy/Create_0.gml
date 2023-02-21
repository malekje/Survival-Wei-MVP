// enemy weaping pick
if (hasweapon)
{
	mygun = instance_create_layer(x,y,"GUN",oEGun)
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;