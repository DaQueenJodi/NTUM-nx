if other.team != team && (image_index<5)
{
	with other
	{
		if sprite_index != spr_hurt && !other.dealtDamage
		{
			if object_index == Player && frozen < 1
			{
				var immunelimit = 0;
				if skill_got[14] = 1
				{
					immune = 1

					if race=25
					immunelimit=6;
			
					if immunelimit > maxhealth
						immunelimit = maxhealth;
						
				}
				if my_health > immunelimit
				{
					if my_health-1 < immunelimit
						my_health = immunelimit
					else
					{
						my_health -= 1
						other.dealtDamage = true;
						snd_play(snd_hurt, hurt_pitch_variation)
						instance_create(x,y,FrozenPlayer);
						frozen=10;
						getFrozen=0;
						sprite_index = spr_hurt
						image_index = 0
					}
				}
			}
			else
			{
				Sleep(10)
				BackCont.shake += 3
			}
		}
	}
}
