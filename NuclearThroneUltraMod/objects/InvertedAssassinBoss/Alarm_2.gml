/// @description SMACK THAT! all on da floor
if alarm[11] > 1
alarm[0] = 15
snd_play(sndAssassinAttack)
wepangle = -wepangle
motion_add(gunangle,6)
if target>0
{
gunangle = point_direction(x,y,target.x,target.y)

with instance_create(x+lengthdir_x(10,gunangle),y+lengthdir_y(10,gunangle),AssassinSlash)
{
dmg=6;
image_angle = other.gunangle
motion_add(other.gunangle+random(10)-5,3.5)
team = other.team
}
alarm[1] = 15+random(10)
dodge=1;
}

