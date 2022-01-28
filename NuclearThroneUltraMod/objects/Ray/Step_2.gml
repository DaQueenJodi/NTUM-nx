if(instance_exists(creator)){
x=creator.x+lengthdir_x(16,direction);
y=creator.y+lengthdir_y(16,direction);
direction=point_direction(x,y,mouse_x,mouse_y);
image_angle=direction;
target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);
if(instance_exists(target) ){
Direction=point_direction(x,y,target.x,target.y);}
}

