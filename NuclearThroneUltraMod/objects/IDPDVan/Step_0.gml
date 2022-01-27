event_inherited()





if speed>12
speed=12;


if speed<0.5 && idle
{
idle=false;
image_index=0;
snd_play(sndVanOpen);
meleedamage=0;
}

