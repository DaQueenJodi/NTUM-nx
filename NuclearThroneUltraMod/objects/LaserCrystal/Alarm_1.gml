///@description AI
alarm[1] = 15+random(12)//30 + 10

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 10+random(10);
}

scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 160
{
if point_distance(x,y,target.x,target.y) > 64
{
ammo = 4
alarm[2] = 30
if instance_exists(Player)
{
if Player.loops>0
alarm[2] = 20
}
snd_play(sndLaserCrystalCharge)
gunangle = point_direction(x,y,target.x,target.y)
sprite_index = spr_fire
alarm[1] = 90+random(10)
if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 60+random(30);
}

}
else
{
if random(3) < 1
direction = point_direction(x,y,target.x,target.y)
else
direction = choose(direction,point_direction(x,y,target.x,target.y)+90+random(180))
}
}
else if random(3) < 1
direction = random(360)

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(10) < 1
{
motion_add(random(360),0.4)
alarm[1] = 10+random(30)
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

