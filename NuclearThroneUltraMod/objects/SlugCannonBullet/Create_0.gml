event_inherited();
friction = 0.4
typ = 1 
bullets=8;
dmg = 26;
alarm[1] = 3;
if instance_exists(Player)
{
	if Player.skill_got[15] = 1
	{
		alarm[1] += 2;
		if Player.ultra_got[97]
		{
		wallbounce+=5;
		alarm[1]+=1;
		}
	}
}