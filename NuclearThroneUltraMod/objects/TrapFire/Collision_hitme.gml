if other.team != team and other.team != 0 && (other.team!=2 || image_index<5/*not player or before this frame*/)
{
	with other
	{

	var immunelimit = 5;

	var immune;
	immune = 0
	if object_index=Player//optimise variable_local_exists("skill_got")
	{
		if skill_got[14] = 1 && other.sprite_index!=sprFireLilHunter
		{
			immune = 1

			if race=25
			immunelimit=6;
			
			if immunelimit>maxhealth
			immunelimit=maxhealth;
		}

		
	}


	if sprite_index != spr_hurt && !other.dealtDamage
	{
	snd_play(snd_hurt, hurt_pitch_variation)

	if immune = 1
	{
	if my_health > immunelimit
	{
	if my_health-1 < immunelimit
	my_health = immunelimit
	else
	my_health -= 1
	}
	}
	else
	my_health -= 1

	sprite_index = spr_hurt
	image_index = 0
	Sleep(10)
	BackCont.shake += 3
	}
	}
	other.dealtDamage = true;
}/*
else if ignoreHitme==false
{
x = xprevious
y = yprevious
}*/