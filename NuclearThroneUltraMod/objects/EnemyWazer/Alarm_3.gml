/// @description Increase range
if laserRange < maxRange && !ending//range
{
	laserRange += laserRangeIncrease;
	alarm[3] = 1;
}
