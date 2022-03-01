if candmg and other.team != team
{
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
if other.my_health >= dmg && other.sprite_index != other.spr_hurt
{
	instance_destroy()

	with other
	{
	my_health -= other.dmg
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,8)
	}
	target = other.id
	with instance_create(x,y,boltStick)
	{
	image_angle = other.image_angle
	target = other.target
	team = other.team;
	}
}
else if other.my_health < dmg and (alarm[1]<1 || other.sprite_index != other.spr_hurt)//other.sprite_index != other.spr_hurt
{
with other
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,6)
}
alarm[1]=4
}
}

