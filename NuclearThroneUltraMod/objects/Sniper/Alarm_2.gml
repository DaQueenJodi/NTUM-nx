snd_play(sndSniperFire)
wkick = 7
with instance_create(x,y,EnemyBullet4)
{motion_add(other.gunangle+4,16)
team = other.team
image_angle = direction
firedbysniper=true;}
with instance_create(x,y,EnemyBullet4)
{motion_add(other.gunangle-4,16)
team = other.team
image_angle = direction
firedbysniper=true;}
with instance_create(x,y,EnemyBullet4)
{motion_add(other.gunangle,16)
team = other.team
image_angle = direction
firedbysniper=true;}
if instance_exists(target)
gunangle = point_direction(x,y,target.x,target.y)
alarm[1] = 40+random(5)
gonnafire = 0

