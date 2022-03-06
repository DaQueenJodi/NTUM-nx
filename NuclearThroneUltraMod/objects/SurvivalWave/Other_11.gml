/// @description Start wave not survival gamemode
if instance_exists(SurvivalArenaStarter)
{
	centerX = SurvivalArenaStarter.x;
	centerY = SurvivalArenaStarter.y;
	x = centerX;
	y = centerY;
}
with prop
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
snd_play_2d(sndCrownCurses);
song = musReflection;
with MusCont
{
	audio_stop_sound(song);
	song = other.song;
	snd_loop(song);
}
with Player
{
	area = 5;	
}
with Floor
{
	if styleb
	{
		sprite_index = sprFloor5B	
	}
	else
	{
		sprite_index = sprFloor5;	
	}
}