alarm[0]=time;
snd_play(sndDiscgun,0.1,true)
var aimDir = image_angle+90;
with instance_create(x,y,SpinnerYoyo)
{
	followOwner = false;
	tx = x;
	ty = y;
	maxlength -= 32;
	scrCanHumphry();
	team = other.team;
	var sins = sin(aimDir);
	if sins > 0
	{
		motion_add(aimDir + 10,6);
		rotation = -200;
	}
	else
	{
		motion_add(aimDir - 10,6);
		rotation = 200;
	}
	image_angle = direction
	oDir = direction;
	owner = other.id
}

aimDir = image_angle-90;
with instance_create(x,y,SpinnerYoyo)
{
	followOwner = false;
	tx = x;
	ty = y;
	maxlength -= 32;
	scrCanHumphry();
	team = other.team;
	var sins = sin(aimDir);
	if sins > 0
	{
		motion_add(aimDir + 10,6);
		rotation = -200;
	}
	else
	{
		motion_add(aimDir - 10,6);
		rotation = 200;
	}
	image_angle = direction
	oDir = direction;
	owner = other.id
}

BackCont.shake += 1

