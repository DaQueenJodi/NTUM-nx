/// @description Also decrease range

// Inherit the parent event
event_inherited();
if laserRange > 1
{
	laserRange -= laserRangeIncrease*3;
}
else
{
	laserRange = 1;	
}
