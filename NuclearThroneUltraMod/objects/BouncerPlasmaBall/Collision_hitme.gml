if other.team != team and other.my_health > 0
{
	speed -= 0.3;
	if other.sprite_index != other.spr_hurt
	{
		Sleep(4);
		BackCont.shake += 2
		image_xscale-=0.1;
		image_yscale-=0.1;
		with other
		{
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0

			motion_add(other.direction,6)
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
	else
	{
		image_index += 0.2;//iframe skipper
	}
}

