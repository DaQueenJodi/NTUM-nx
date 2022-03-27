/// @description alpha increase
if (comingIn)
{
	alpha = min(0.4, alpha + 0.13);
}
else
{
	alpha -= 0.1;
	if (alpha <=0)
		instance_destroy();
}