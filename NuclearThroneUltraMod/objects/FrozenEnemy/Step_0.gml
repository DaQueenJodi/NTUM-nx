x=xx;
y=yy;
if instance_exists(enemy){
//first try check if enemies are further away then check frozen state
if point_distance(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)>8{
image_speed=1;}
else if instance_nearest(x,y,enemy).frozen==false
{
image_speed=1;
}
}
else{image_speed=1;}

