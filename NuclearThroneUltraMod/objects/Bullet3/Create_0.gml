event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable

hitWall=0;
maxWallHits = 2;
if instance_exists(Player)
{
	if Player.skill_got[15]
		maxWallHits += 1;
}
dmg=4;
norecycle = false;
alarm[11] = 1;
rotation = choose(10,-10);