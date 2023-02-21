// die while touching ground
with (oGun) instance_destroy();
instance_change(oPDead,true);

direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6,direction);
vsp = lengthdir_x(4,direction)-2;
if (sign(hsp) != 0) image_xscale = sign(hsp);
game_set_speed(60,gamespeed_fps);
SlideTransition(TRANS_MODE.GOTO,room);
