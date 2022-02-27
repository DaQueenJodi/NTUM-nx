/// @description lose alpha
alpha -= 0.2;
if alpha <= 0
{
	alpha = 0;
	instance_destroy(id,false);
}
else
{
	alarm[2] = 1;	
}