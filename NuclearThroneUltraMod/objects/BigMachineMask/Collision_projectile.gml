/// @description kill projectiles
var proj = other;
if instance_exists(BigMachine)
{
if BigMachine.alarm[3]<1
{
    with proj
    {
	    if team!=1 && object_index != Laser && object_index != MegaLaser && object_index != Lightning && object_index != Tentacle
	    instance_destroy();
    }
	//Reduced damage
	if proj.team != 1
	with BigMachine
	{
		if (spr_idle == sprBigMachineIdle)
		{
			my_health -= proj.dmg*0.24;
			sprite_index = sprBigMachineHurt;
			image_index = 1;
		}
	}
}

}

if instance_exists(InvertedBigMachine)
{
if InvertedBigMachine.alarm[3]<1
{
    with proj
    {
		if team!=1 && object_index != Laser && object_index != MegaLaser && object_index != Lightning && object_index != Tentacle
		instance_destroy();
    }
	//Reduced damage
	if proj.team != 1
	with InvertedBigMachine
	{
		if (spr_idle == sprInvertedBigMachineIdle)
		{
			my_health -= proj.dmg*0.22;
			sprite_index = sprInvertedBigMachineHurt;
			image_index = 1;
		}
	}
}

}

