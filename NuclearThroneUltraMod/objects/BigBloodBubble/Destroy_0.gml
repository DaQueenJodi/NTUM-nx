/// @description Explode
snd_play(sndMeatExplo,0.1,true);
snd_play(sndClusterOpen,0.1,true);
snd_play(choose(sndWater1,sndWater2),0.1,true);
with instance_create(x,y,MeatExplosion)
	scrCanHumphry();