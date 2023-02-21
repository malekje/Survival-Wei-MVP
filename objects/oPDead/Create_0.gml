hsp = 3;
vsp = -4;
grv = 0.2;
done = 0;

image_speed = 0;
image_index = 0;
audio_play_sound(gta_v_death_sound_effect,10,false);
game_set_speed(30,gamespeed_fps);
with (oCamera) follow = other.id;