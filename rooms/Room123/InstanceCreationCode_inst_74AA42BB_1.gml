// Moving to next level
with (oPlayer)
{
	if(hcontrol)
	{
		hcontrol = false;
		SlideTransition(TRANS_MODE.GOTO,RoomEnd)
		audio_play_sound(valorant_teleporter,1,false);
	}
}
