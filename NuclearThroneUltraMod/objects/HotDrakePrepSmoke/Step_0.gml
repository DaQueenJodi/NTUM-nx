image_xscale += growspeed
image_yscale += growspeed

growspeed -= 0.001
image_angle += rot
if instance_exists(HotDrake){
motion_add(point_direction(x,y,HotDrake.x-8,HotDrake.y)+random(6)-3,0.2)

if point_distance(x,y,HotDrake.x-8,HotDrake.y)<24
instance_destroy();

if image_xscale < 0
instance_destroy()
}
else{instance_destroy();}

