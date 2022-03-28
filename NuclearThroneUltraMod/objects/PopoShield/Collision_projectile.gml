if team != other.team && image_index>10
{
if other.typ =1
{
snd_play(sndShielderDeflect,0.1,true);
other.team = team
other.direction = point_direction(x,y,other.x,other.y)
other.image_angle = other.direction
with instance_create(other.x,other.y,Deflect)
image_angle = other.direction
}
if other.typ = 2
{
with other
instance_destroy()
}

}

