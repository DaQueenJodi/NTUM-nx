/// @description lightning lightning ever so frightning
if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
snd_play(choose(sndSpark1,sndSpark2))


with instance_create(x,y,Lightning)
{image_angle = random(360);
accuracy=0;
target=other.target;
team = other.team
ammo = 8;
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}

alarm[2] = 3 + irandom(2);