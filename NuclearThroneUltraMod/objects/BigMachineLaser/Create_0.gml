friction=0.4;
image_speed=0.4;
direction=90;

alarm[0]=200;

gunangle=0;
ammo=0;

spr_idle=sprBigMachineLaser
spr_fire=sprBigMachineLaserFire

if instance_exists(BigMachine)
{
	if BigMachine.x < x
		image_xscale = -1;
}