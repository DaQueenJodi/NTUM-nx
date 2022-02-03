if other.team != team
{
with other
{
var immune;
immune = 0
if object_index=Player
{
if skill_got[14] = 1{
immune = 1
//alarm[4]=120;
}
}

if !(sprite_index = spr_hurt and immune = 1)
{
snd_play(snd_hurt)

if immune = 1
{
alarm[4]=50;
if my_health > maxhealth/2
{
if my_health-other.dmg < maxhealth/2//5
my_health = maxhealth/2
else
my_health -= other.dmg
}
}
else if instance_exists(Player)
my_health -= other.dmg+Player.ultra_got[57]*other.dmg//atom ultra
else
my_health-=other.dmg;

sprite_index = spr_hurt
image_index = 0
motion_add(point_direction(other.x,other.y,x,y),6)
Sleep(1)
BackCont.shake += 1
}
}
}

