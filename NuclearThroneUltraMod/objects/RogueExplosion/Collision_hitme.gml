if other.team!=2//other.team != team  &&
{
with other
{

snd_play(snd_hurt)
my_health -= 12
sprite_index = spr_hurt
image_index = 0
motion_add(point_direction(other.x,other.y,x,y),6)
Sleep(5)
BackCont.shake += 2
}
}
else if other.team = 2 && instance_exists(Player) && other.team != team
{
with other
{
var immune;
immune = 0
if Player.skill_got[14] = 1{
immune = 1
//alarm[4]=120;
}


if !(sprite_index = spr_hurt and immune = 1)
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
else
my_health-=5;

sprite_index = spr_hurt
image_index = 0
motion_add(point_direction(other.x,other.y,x,y),6)
Sleep(4)
BackCont.shake += 2
}
}
}


