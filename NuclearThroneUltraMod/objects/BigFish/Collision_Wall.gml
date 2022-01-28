
if intro=1
{
with other
{
instance_destroy()
instance_create(x,y,FloorExplo)
}
}
else
move_bounce_solid(true)

BackCont.shake += 2;

