/// @description open up baby
snd_play(choose(sndFrogEggOpen1,sndFrogEggOpen2));
if team == 2
	instance_create(x,y,AllyExploder);
else
	instance_create(x,y,Exploder);

instance_destroy();