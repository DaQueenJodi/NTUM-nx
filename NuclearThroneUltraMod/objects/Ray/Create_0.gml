/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
event_inherited();

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
explosive=1;
direction=point_direction(x,y,mouse_x,mouse_y);
x=Player.x+lengthdir_x(16,direction);
y=Player.y+lengthdir_y(16,direction);
xx=x;
yy=y;
xxPrevious=xx;
xxPrevious=yy;
var i;
hue=random(225);
target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);
if(instance_exists(target) ){
Direction=point_direction(x,y,target.x,target.y);}

/* */
/*  */
