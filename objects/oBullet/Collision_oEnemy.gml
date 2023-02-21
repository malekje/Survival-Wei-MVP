// Flashes & lose HP & die while getting hit by a bullet
with (other)
{
	hp--;
	flash = 3;
	hitfrom = other.direction;
}

instance_destroy();