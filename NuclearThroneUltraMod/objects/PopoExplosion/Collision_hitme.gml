if other.team != team
{
with other
{
var immune;
immune = 0
if object_index=Player//optimise variable_local_exists("skill_got")
{
if skill_got[14] = 1
{
Sleep(5)
BackCont.shake += 2
immune = 1
}
}
if immune = 0
{
snd_play(snd_hurt, hurt_pitch_variation)
my_health -= 4
sprite_index = spr_hurt
image_index = 0
motion_add(point_direction(other.x,other.y,x,y),6)
Sleep(5)
BackCont.shake += 2
}
}
}

