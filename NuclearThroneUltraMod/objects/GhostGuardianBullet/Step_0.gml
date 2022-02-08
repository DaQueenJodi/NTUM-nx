/// @description Rotate
if instance_exists(owner)
{
image_angle += angleDir;
//Additive drag behind so eyes has some effect
x += ((owner.x + lengthdir_x(distance,ownerAngle))-x)*0.7;
y += ((owner.y + lengthdir_y(distance,ownerAngle))-y)*0.7;
ownerAngle += (ownerAngleRotationSpeed * rotationDirection);
}
else
{
instance_destroy();	
}