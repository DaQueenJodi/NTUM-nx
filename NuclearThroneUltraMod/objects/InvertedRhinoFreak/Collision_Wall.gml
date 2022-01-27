event_inherited()

if instance_exists(Player)
{
if point_distance(x,y,Player.x,Player.y) < 64
instance_destroy()
}


