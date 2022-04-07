if other.team != team
{
	var t = team;
	with other
{
	if sprite_index != spr_hurt
	{
		with instance_create(x,y,Flame)
		{
			team = t;
		}
		snd_play(snd_hurt, hurt_pitch_variation)
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
		Sleep(other.sleepRate+size*10)
		BackCont.shake += 5
	}
}}

