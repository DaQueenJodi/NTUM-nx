alarm[1] = 26+random(26)


walk = alarm[1]
scrTarget()
if sprite_index = spr_fire
sprite_index = spr_idle

if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if random(2) < 1
{
//roll
snd_play(sndWolfRoll)
direction = point_direction(x,y,target.x,target.y)
sprite_index = spr_fire
image_index = 0
alarm[2] = 8
alarm[1] = 26



}
else
{
direction = point_direction(x,y,target.x,target.y)+110+random(140)
if random(4) < 1
{
speed = 0
walk = 0
}}
}
else 
{
motion_add(random(360),2)
motion_add(point_direction(x,y,target.x,target.y),1.5)
if random(3) < 1
{
speed = 0
walk = 0}
}
}
else 
motion_add(random(360),2)

