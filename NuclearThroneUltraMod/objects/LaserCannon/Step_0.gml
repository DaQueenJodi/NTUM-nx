
if instance_exists(creator)
{
x = creator.x+lengthdir_x(16,point_direction(creator.x,creator.y,mouse_x,mouse_y))
y = creator.y+lengthdir_y(16,point_direction(creator.x,creator.y,mouse_x,mouse_y))
image_xscale += 0.02
image_yscale += 0.02
}

