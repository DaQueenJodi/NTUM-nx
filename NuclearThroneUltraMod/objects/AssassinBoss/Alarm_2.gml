/// @description SMACK THAT!
alarm[0] = 15
snd_play(sndAssassinAttack)
wepangle = -wepangle
motion_add(gunangle,6)
if target>0
{
gunangle = point_direction(x,y,target.x,target.y)

with instance_create(x+lengthdir_x(8,gunangle),y+lengthdir_y(8,gunangle),AssassinSlash)
{
dmg=5;
image_angle = other.gunangle
motion_add(other.gunangle+random(10)-5,3)
team = other.team
}
alarm[1] = 15+random(10)
dodge=1;
}

