alarm[0] = 2

if instance_exists(enemy)
{
target = 0
with enemy
{
with instance_create(x,y,BECOMETARGET)
creator = other.id
}
with BECOMETARGET
{
if collision_line(x,y,other.x,other.y,Wall,1,0) > 0
instance_destroy()
}
if instance_exists(BECOMETARGET)
target = instance_nearest(x,y,BECOMETARGET).creator
else
target = 0
with BECOMETARGET
instance_destroy()

if target != 0
{
gunangle = point_direction(x,y,target.x,target.y)
ammo -= 1
snd_play(sndEnemyFire)
wkick = 4
snd_play(sndPistol)

with instance_create(x,y,Shell)
motion_add(other.gunangle+other.right*100+random(50)-25,2+random(2))

with instance_create(x,y,Bullet1)
{motion_add(other.gunangle+random(12)-6,16)
image_angle = direction
team = other.team}

BackCont.shake += 2
wkick = 2

ammo -= 1
}
}

if ammo <= 0
instance_destroy()

