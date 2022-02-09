event_inherited()





if speed>12
speed=12;


if speed<0.5 && idle
{
idle=false;
if team != 2
	team = 0;
image_index=0;
snd_play(sndVanOpen);
meleedamage=0;
}

