/// @description step 4
debug("rise up");
snd_play(sndNothingRise);
image_speed = 0.5;
prevImageIndex = 1;
image_index = 1;
//insomnia start slower
alarm[1] = 30;
if instance_exists(Player)
{
	if Player.skill_got[29]//insomnia
	{
		alarm[1] += 200;
		debug("INSOMNIA");
		with instance_create(x,y,Snooze)
		{
			owner = other.id;
			depth = other.depth - 1;
			yoffset = 0;
		}
	}
}