/// @description xxx

// Inherit the parent event
event_inherited();

if other.team != team and other.my_health > 0
{
	if instance_exists(Player) && Player.skill_got[17] = 1// && !audio_is_playing(sndMorphStart)
			snd_play(sndMorphStart,0.1,true,true);
		else// if !audio_is_playing(sndMorphStop)
			snd_play(sndMorphStop,0.1,true,true);
	
	with instance_create(other.x,other.y,Morph)
	{
		team = other.team;
		alarm[0] -= 1;
	}
	//RECYCLE GLAND
		if instance_exists(Player){
		if Player.skill_got[16] = 1 and random(3) < 2 +Player.betterrecyclegland
		{
		if !(Player.ammo[1] >= Player.typ_amax[1])
		{
		Player.ammo[1] += 1
		instance_create(x,y,RecycleGland);
		}

		}
		}
}