scrTarget()
if target > 0
{
if (point_distance(x,y,target.x,target.y) < 128 or collision_line(x,y,target.x,target.y,Wall,0,0) < 0) and !instance_exists(Portal) 
timer += 1
if timer > 60
{
raddrop = 8
meleedamage = 0
size = 1
image_speed = 0.4

spr_idle = sprGatorIdle
spr_walk = sprGatorWalk
spr_hurt = sprGatorHurt
spr_dead = sprGatorDead

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 10+random(30)
wepangle = choose(-140,140)
wepflip = 1
instance_change(Gator,true)

with instance_create(x,y,Shell)
sprite_index = sprCigarette

}
}

if image_index < 1
image_index += random(0.02)
else
image_index += 0.4

