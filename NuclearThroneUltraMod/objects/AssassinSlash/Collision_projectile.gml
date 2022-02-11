if team != other.team
{

if other.typ =1
{
other.team = team
other.direction = image_angle
other.image_angle = other.direction
other.speed*=0.2;
}
if other.typ = 2
{
with other
instance_destroy()
}

}

