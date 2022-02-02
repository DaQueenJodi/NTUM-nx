if other.team = 2 && instance_exists(Player)
{
with other
{

var immunelimit = 4;

var immune;
immune = 0
if Player.skill_got[14] = 1{
immune = 1

if Player.race=25//Mutation smith
immunelimit=5;

if Player.ultra_got[97]//Mutation Doctor Ultra A
immunelimit=7;
//alarm[4]=120;

if immunelimit>Player.maxhealth
immunelimit=Player.maxhealth;
}


if !(sprite_index = spr_hurt and immune = 1)
{
snd_play(snd_hurt, hurt_pitch_variation)

if immune = 1
{
alarm[4]=50;
if my_health > immunelimit
{
if my_health-5 < immunelimit
my_health = immunelimit
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

