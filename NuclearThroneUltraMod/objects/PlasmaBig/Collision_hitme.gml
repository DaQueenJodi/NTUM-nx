if other.team != team and other.my_health > 0
{
	if other.sprite_index != other.spr_hurt
	{
		BackCont.shake += 6
		image_xscale-=0.3;
		image_yscale-=0.3;
		Sleep(20)
		with other
		{

			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,4)
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
	else
	{
		image_index += 0.2;//iframe skipper
	}
}

