dir = random(360)
scrRaddrop();
Sleep(50)
/// @description Spectacular
with MusCont {
	audio_stop_sound(song)
	if instance_exists(Player) 
	{
		if Player.area == 2
			song = mus6;
		else if Player.area == 110
			song = musInvertedSewers;
	}
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

scrUnlockCharacter(23,"FOR KILLING MOTHER!#THAT'S KINDA GRIM")