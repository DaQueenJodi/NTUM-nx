if other.team != team and other.my_health > 0
{
	instance_destroy()
with other
{
	var dealDmg = false;
	if object_index == Player
	{
    if sprite_index!=spr_hurt
    {
		dealDmg = true;
    }
	}
	else
	{
		dealDmg = true;
	}
	if (dealDmg)
	{
		my_health -= other.dmg
	    sprite_index = spr_hurt
	    image_index = 0
	    motion_add(other.direction,3)	
	}
}
snd_play(other.snd_hurt, other.hurt_pitch_variation)
with instance_create(x,y,BulletHit)
sprite_index = sprBullet2Disappear}

