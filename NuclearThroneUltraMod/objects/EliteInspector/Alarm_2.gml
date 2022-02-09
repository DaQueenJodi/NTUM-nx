/// @description smack that

//FIRE
snd_play(sndEliteInspectorFire)

wepangle = -wepangle
motion_add(gunangle,4)


with instance_create(x,y,PopoSlash)
{
image_angle = other.gunangle
motion_add(other.gunangle+random(10)-5,2)
team = other.team
if team == 2
	sprite_index = sprPopoSlashRogue;
}

BackCont.shake += 3

