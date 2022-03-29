/// @description IT IS I! WHO THY SHALL FIGHT
with myKind
{
	imageIndex = 0;
	spr_idle = spr_disappear;
	spr_walk = spr_disappear;
	if active
	{
		snd_play(sndTechnomancerDisappear);	
	}
	active = false;
}
imageIndex = 0;
spr_idle = spr_appear;
spr_walk = spr_appear;
active = true;
snd_play(sndTechnomancerAppear);