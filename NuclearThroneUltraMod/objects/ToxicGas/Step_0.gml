if image_xscale+growspeed < 1
{
image_xscale += growspeed
image_yscale += growspeed
}

if growspeed > -0.005
growspeed -= 0.0006
if image_xscale < 0.4
growspeed -= 0.02
image_angle += rot

if image_xscale < 0.15
instance_destroy()

if instance_exists(Player)
{

if Player.race=23&&Player.skill_got[5]=1&&instance_exists(enemy)
{
var dir=point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)
motion_add(dir,0.1);
}

}

