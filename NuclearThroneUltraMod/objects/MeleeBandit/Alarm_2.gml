//SMACK THAT!
alarm[0] = 20
snd_play(sndAssassinAttack)
wepangle = -wepangle
motion_add(gunangle,6)
gunangle = point_direction(x,y,target.x,target.y)

with instance_create(x,y,EnemySlash)
{
image_angle = other.gunangle
motion_add(other.gunangle+random(10)-5,2)
team = other.team
}
alarm[1] = 40+random(5)

