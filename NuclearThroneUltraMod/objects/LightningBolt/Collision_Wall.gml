if speed != 0
{
snd_play(sndBoltHitWall,0.1,true)
speed = 0
move_contact_solid(direction,16)
instance_create(x,y,Dust)

if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndLightning3)
else
snd_play(sndLightning1)
}
else
snd_play(sndLightning1)

with instance_create(x,y,Lightning)
{image_angle = point_direction(x,y,other.xstart,other.ystart)
team = other.team
ammo = 20
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}

}

