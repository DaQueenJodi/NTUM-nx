raddrop = 11
maxhealth = 14
meleedamage = 5
size = 2



event_inherited()
spr_idle = sprScorpionIdle
spr_walk = sprScorpionWalk
spr_hurt = sprScorpionHurt
spr_dead = sprScorpionDead
spr_fire = sprScorpionFire

snd_hurt = sndScorpionHit
snd_dead = sndScorpionDie
snd_mele = sndScorpionMelee

//behavior
ammo = 10
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
replace=false;
if instance_exists(Player)
{
	if random(30) < 1 + Player.loops * 4 and (Player.subarea > 1 || Player.loops > 0)
	{
		replace=true;
		instance_destroy()
		instance_create(x,y,GoldScorpion)
	}
}

