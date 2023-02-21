// Text writing
letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fMenu);
if (h == 0) h = string_height(text);
w = string_width(text_current);


// destroy text after it's done
if (letters >= length) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	with (oCamera) follow = oPlayer;
}