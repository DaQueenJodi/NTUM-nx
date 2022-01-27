snd_play(sndSniperFire)
wkick = 8
with instance_create(x,y,EnemyBullet5)
{motion_add(other.gunangle+4,16.5)
team = other.team
image_angle = direction
firedbysniper=true;}
with instance_create(x,y,EnemyBullet5)
{motion_add(other.gunangle-4,16.5)
team = other.team
image_angle = direction
firedbysniper=true;}
with instance_create(x,y,EnemyBullet5)
{motion_add(other.gunangle,16.5)
team = other.team
image_angle = direction
firedbysniper=true;}
if instance_exists(target)
gunangle = point_direction(x,y,target.x,target.y)
alarm[1] = 30+random(10)
gonnafire = 0

