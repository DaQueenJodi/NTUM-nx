///scrSleepyPopo();
// /@description
///@param
function scrSleepyPopo(){
	if instance_exists(Player)
	{
		if Player.skill_got[29]//insomnia
		{
			alarm[1] += 60;
			with instance_create(x,y,Snooze)
			{
				owner = other.id;
				depth = other.depth - 1;
				yoffset = 0;
			}
		}
	}
}