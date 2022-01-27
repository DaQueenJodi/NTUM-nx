snd_play(sndThunder)

ang = random(360)
repeat(10)//PLASMA CANNON 10
{
with instance_create(x-lengthdir_x(8,direction),y-lengthdir_y(8,direction),Lightning)
{image_angle = other.ang+(random(30)-15)
team = other.team
ammo = 14
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}

ang += 360/10
}

