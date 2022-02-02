/// @description alpha increase
if (comingIn)
{
	alpha = min(0.5, alpha + 0.15);
}
else
{
	alpha -= 0.1;
	if (alpha <=0)
		instance_destroy();
}