/// @description End check enem death
if instance_number(enemy) <= 0
{
	instance_create(centerX,centerY,Portal);
}
else
{
	alarm[1] = 60;	
}
