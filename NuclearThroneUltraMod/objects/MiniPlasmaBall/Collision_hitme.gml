if other.team != team and other.my_health > 0
{
	if other.sprite_index != other.spr_hurt
	{
		BackCont.shake += 0.5
		image_xscale-=0.3;
		image_yscale-=0.3;
		with other
		{
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
			motion_add(other.direction,4)
		}
	}
	else
	{
		image_index += 0.2;//iframe skipper
	}

}

