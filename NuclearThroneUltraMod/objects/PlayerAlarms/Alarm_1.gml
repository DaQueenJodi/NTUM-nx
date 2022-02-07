/// @description YUNG CUZ C SKIN UNLOCK
instance_exists(Player)
{
	if (Player.maxhealth < 2)
	{
		Player.yungCuzCskin ++;
	}
	else
	{
		Player.yungCuzCskin = 0;
	}
}
alarm[1] = 60;//Confirm every two seconds