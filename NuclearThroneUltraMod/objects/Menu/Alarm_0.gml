if mode == 0
{
if image_index < image_number-1
{
image_index += 1

if image_index < 7
{
alarm[0] = 2
snd_play(sndMachinegun);
BackCont.shake += 3
if image_index = 6
alarm[0] = 10
}
else if image_index = 7
{
BackCont.shake += 8
//snd_play(sndShovel)
//snd_play(sndMeatExplo)
snd_play(sndExplosion);

alarm[0] = 12;
}
else if image_index == 13
{
	alarm[0] = 15;
}
else if image_index < 12
{
	alarm[0] = 1;
	snd_play(sndMachinegun);
	//snd_play(sndMeatExplo)
	BackCont.shake += 4;
}
else if image_index == 12
{
	alarm[0] = 1;
	snd_play(sndIntroFadeIn);
}
else if image_index == 14
{
	BackCont.shake += 20
	snd_play(sndShovel)
	snd_play(sndMeatExplo)
	snd_play(sndExplosionXL);
	snd_play(sndGammaGutsProc);
	alarm[0] = 8;
}
else if image_index < image_number-1
{
	alarm[0] = 4;
}

}
}

