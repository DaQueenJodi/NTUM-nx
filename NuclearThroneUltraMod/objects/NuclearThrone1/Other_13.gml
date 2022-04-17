/// @description Become active
snd_play_2d(sndNothingRise);
image_speed = 0.5;
prevImageIndex = 1;
image_index = 1;

sprite_index = sprNothingMiddle;
spr_idle = sprNothingMiddle;
spr_hurt = sprNothingMiddleHurt;
mask_index = mskNothingMiddle;
image_speed = 0.4;
with leftSide
{
	visible = true;
	meleedamage = 10;
	mask_index = mskNothingSide;
}
with rightSide
{
	visible = true;
	meleedamage = 10;
	mask_index = mskNothingSide;
}
with ThroneFlame
{
	sprite_index = sprThroneFlameStart;
	image_index = 0;
	visible = true;
	//yOffset -= 26;
	if x > other.x
		xOffset += 11;
	else
		xOffset -= 10;
}
active = true;
intro = false;
immune = false;

my_health = maxhealth;
EnemyHealthAdjustments();
with NuclearThrone1Side
{
	my_health = maxhealth;
	EnemyHealthAdjustments();	
}
alarm[1] = 40;
//insomnia start slower
if instance_exists(Player)
{
	if Player.skill_got[29]//insomnia
	{
		alarm[1] += 140;
		with instance_create(x,y,Snooze)
		{
			owner = other.id;
			depth = other.depth - 1;
			yoffset = 0;
		}
	}
}