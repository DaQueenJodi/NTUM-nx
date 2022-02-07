/// @description Stop jumping
if sprite_index == spr_jump_down && alarm[3] < 1
{
	snd_play(sndDogGuardianLand);
	sprite_index = spr_normal;
	spr_idle = spr_normal;
	spr_walk = spr_normal;
	jumpDown = false;
	charge = false;
	fire = false;
	alarm[1] += 10;
	image_index = 0;
	instance_create(x,y,WallBreak);
	repeat(10)
	{with instance_create(x,y,Dust)
		{
		motion_add(random(360),3)
		depth=other.depth +1;
		}
	}
	
}