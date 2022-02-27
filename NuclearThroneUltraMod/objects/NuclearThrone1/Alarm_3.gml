/// @description step 4 vulnerable
snd_play_2d(sndNothingRise);
image_speed = 0.5;
prevImageIndex = 1;
image_index = 1;
//insomnia start slower
alarm[1] = 30;
my_health = maxhealth;
EnemyHealthAdjustments();
with NuclearThrone1Side
{
	my_health = maxhealth;
	EnemyHealthAdjustments();	
}
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