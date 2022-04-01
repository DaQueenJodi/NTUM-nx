if size >= other.size-1 and speed > 2 and other.sprite_index != other.spr_hurt
{
	if instance_exists(Player)
	{
		if Player.skill_got[20] = 1
		{
			dmg = 2
			instance_create(x,y,ImpactFX);
		}
		else
			dmg = 1
		if Player.ultra_got[52] == 1 && random(10) < 6
		{
			snd_play(sndMeatExplo,0.1,true);
			snd_play(sndExplosionS,0.1,true);
			instance_create(x,y,MeatExplosion);
		}
	}
	else
		dmg = 1
	with other
	{
		my_health -= round(other.dmg+other.speed/5)
		if instance_exists(Player)
		{
			if Player.skill_got[20] == 1
			{
				if my_health <= 0
					snd_play(sndImpWristKill,0.05,true);
				else
					snd_play(sndImpWristHit,0.05,true);
			}
		}
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,other.speed/2)
		snd_play(snd_hurt, hurt_pitch_variation)
	}
	Sleep(2*size)
	speed /= 2
}

