if other.team != team
{
with other
{
var immune;
immune = 0
if object_index=Player//optimise variable_local_exists("skill_got")
{
if skill_got[14] = 1{
immune = 1
//alarm[4]=120;
}
}

if !(other.sprite_index = spr_hurt and immune = 1)
{
snd_play(snd_hurt)

if immune = 1
{
alarm[4]=50;
if my_health > maxhealth/2
{
if my_health-5 < maxhealth/2
my_health = maxhealth/2
else
my_health -= 5
}
}
else if instance_exists(Player)
my_health -= 5+Player.ultra_got[57]*5//atom ultra

sprite_index = spr_hurt
image_index = 0
motion_add(point_direction(other.x,other.y,x,y),6)
Sleep(5)
BackCont.shake += 2
}
}
}

