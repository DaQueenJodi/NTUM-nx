if speed > 0 && other.team != team
{
	if !array_contains(hitEntities,other.id)
	{
		
		hitEntities[array_length(hitEntities)] = other.id;
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)
		}
		dmg += dmgAdd;
	}
}

