/// @description kill projectiles
var proj = other;
if instance_exists(BigMachine)
{
if BigMachine.alarm[3]<1
{
    with proj
    {
    if team!=1
    instance_destroy();
    }
	//Reduced damage
	with BigMachine
	{
		my_health -= proj.dmg*0.2;
		if (spr_idle == sprBigMachineIdle)
		{
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
		if team!=1
		instance_destroy();
    }
	//Reduced damage
	with InvertedBigMachine
	{
		my_health -= proj.dmg*0.18;
		if (spr_idle == sprInvertedBigMachineIdle)
		{
			sprite_index = sprInvertedBigMachineHurt;
			image_index = 1;
		}
	}
}

}

