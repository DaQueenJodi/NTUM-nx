scrTarget()
alarm[1] = 6+random(12)
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if rage = 0
rage = 1.5
direction = point_direction(x,y,target.x,target.y)+random(60)-30
}
else
{
if my_health < maxhealth and random(3) < 1
{
image_index = 0
snd_play(sndBigMaggotBurrow,0,true)
instance_change(BigMaggotBurrowInverted,false)
}
rage = 0
motion_add(random(360),1)
}
}
else 
{
rage = 0
motion_add(random(360),1)
}

