dir = random(360)
scrRaddrop();
Sleep(50)
/// @description Spectacular
with MusCont {
	audio_stop_sound(song)
}
snd_play_2d(snd_dead);
with instance_create(x,y,BallMomExplode)
{
	team = other.team;	
}


BackCont.shake += 10

repeat(3)
{
with instance_create(x,y,ExploderExplo)
motion_add(random(360),random(2)+2)
}
