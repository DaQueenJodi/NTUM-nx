/// @description lower alpha
if alpha > 1
{
	alarm[2] = 1;
	alpha -= 0.2;
}
else
	instance_destroy();