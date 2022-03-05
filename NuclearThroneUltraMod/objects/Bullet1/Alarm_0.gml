/// @description Change to pellet
with instance_create(x,y,Bullet2)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
}
instance_destroy(id,false);
