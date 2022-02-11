if instance_exists(Player)
{
	if Player.hogpoints < 1 && !(Player.ultra_got[0] && !Player.horrorEtaken)
		Player.skillsChosen=-1;
}

