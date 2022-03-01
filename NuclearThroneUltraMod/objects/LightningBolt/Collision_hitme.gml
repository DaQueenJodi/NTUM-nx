if speed > 0 and other.team != team
{
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
if other.my_health >= 10
{
instance_destroy()

with other
{
my_health -= 20
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
}
target = other.id
with instance_create(x,y,BoltStick)
{
image_angle = other.image_angle
target = other.target
}

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
else if other.my_health < 10 and (alarm[1]<1 || other.sprite_index != other.spr_hurt)//other.sprite_index != other.spr_hurt
{
with other
{
my_health -= 10
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,6)
}
alarm[1]=4
}
}

