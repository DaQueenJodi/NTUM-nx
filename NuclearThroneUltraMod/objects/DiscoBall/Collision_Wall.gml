/// @description Break wall on bounce and electroball why not

snd_play_fire(sndPlasmaMinigun)
with instance_create(x+lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)),ElectroBall)
{
motion_add(other.direction+180,2)
image_angle = direction
team=other.team;

with instance_create(x,y,ElectroBallSpawn)
{motion_add(other.direction,1)
image_angle = direction}

}
move_bounce_solid(true)

instance_create(other.x+8,other.y+8,WallBreak);