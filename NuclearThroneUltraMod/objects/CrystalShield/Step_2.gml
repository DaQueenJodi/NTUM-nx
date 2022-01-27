if Player.ultra_got[6]=1{
Player.x = x;
Player.y = y;
}

if Player.ultra_got[8]=1{
with projectile
{
if team=other.team&&object_index!=Laser&&object_index!=MegaLaser{
if instance_exists(enemy)
        {
            if (direction<point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y) )
            {
            direction+=5
            image_angle+=5
            }
            else if (direction>point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y) )
            {
            direction-=5
            image_angle-=5
            }
            
if place_free(x+lengthdir_x(2,point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)),y)
x += lengthdir_x(2,point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y))
if place_free(x,y+lengthdir_y(2,point_direction(x,y,Player.x,Player.y)))
y += lengthdir_y(2,point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y))
        }
        }
}
}

