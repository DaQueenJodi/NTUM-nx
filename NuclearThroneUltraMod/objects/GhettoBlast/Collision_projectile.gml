if team != other.team
{

image_speed = 0.4;
if other.typ =1
{
other.team = team
other.direction = image_angle
other.image_angle = other.direction
with instance_create(other.x,other.y,Deflect)
image_angle = other.direction
}
if other.typ = 2
{
with other
instance_destroy()
}
speed *= 0.9;
}

