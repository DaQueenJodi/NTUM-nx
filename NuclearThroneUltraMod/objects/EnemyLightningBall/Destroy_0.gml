
snd_play(choose(sndLightning3,sndThunder));
repeat(6)
{

with instance_create(x,y,Lightning)
{image_angle = random(360);
team = other.team
ammo = 1+irandom(5);
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}

}

