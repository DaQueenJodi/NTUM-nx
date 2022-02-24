/// @description Check if I die so disable me
if my_health <= 0 && !disable
{
	my_health = 99999;
	disable = true;
	BackCont.shake += 20;
	BackCont.viewy2 += 40*UberCont.opt_shake;
	snd_play_2d(sndNothingTaunt);
	snd_play_2d(sndExplosionXXL);
	var xx = x;
	var yy = y;
	var ang = random(360);
	var angstep = 360/6;
	repeat(6)
	{
		with instance_create(xx,yy,GreenExplosion)
			depth = other.depth - 2;
		xx = x + lengthdir_x(48,ang);
		xx = y + lengthdir_y(48,ang);
		ang += angstep;
	}
	var ang = random(360);
	repeat(6)
	{
		with instance_create(xx,yy,GreenExplosion)
			depth = other.depth - 2;
		xx = x + lengthdir_x(96,ang);
		xx = y + lengthdir_y(96,ang);
		ang += angstep;
	}
	if isLeft
	{
		spr_idle = sprNothingLeftDeactivated;
		spr_hurt = sprNothingLeftDeactivatedHurt;
		with NuclearThrone1
		{
			aTime = max(aTime-1,1);
			with rightSide
			{
				firerate = max(firerate - 1, 1);
				maxAmmo = max(maxAmmo - 1, 3);
				gunangle[array_length(gunangle)] = 340;//Add in a rightshot
				if disable {
					other.my_health -= 100;
				}
			}
		}
	}
	else
	{
		spr_idle = sprNothingRightDeactivated;
		spr_hurt = sprNothingRightDeactivatedHurt;
		with NuclearThrone1
		{
			aTime = max(aTime-1,1);
			with leftSide
			{
				firerate = max(firerate - 1, 1);
				maxAmmo = max(maxAmmo - 1, 3);
				gunangle[array_length(gunangle)] = 200;//Add in a leftshot
				if disable {
					other.my_health -= 100;
				}
			}
		}
	}
	sprite_index = spr_idle;
	image_index = 0;
}
