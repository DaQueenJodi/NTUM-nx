/// @description Different image
snd_play(sndPlasmaHit)
event_inherited()
with instance_create(x,y,PlasmaImpact)
{
	sprite_index = sprRedirectorPlasmaImpact;
}
Sleep(10)