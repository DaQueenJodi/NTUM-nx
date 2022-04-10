if other.team != team
{
	if other.sprite_index != other.spr_hurt
	{
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation)
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(point_direction(other.x,other.y,x,y),2)
			Sleep(5)
			BackCont.shake += 2
		}
	}
	else
	{
		image_index += 0.2;//iframe skipper
	}
}

