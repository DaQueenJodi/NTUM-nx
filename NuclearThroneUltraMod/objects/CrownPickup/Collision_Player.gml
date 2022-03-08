with Crown
{
	instance_destroy();	
}
instance_change(Crown,true)
Player.crownpoints += 1
if Player.curse = 1 or Player.bcurse = 1
{
repeat(10)
instance_create(x+random(16)-8,y+random(16)-8,Curse)
}
Player.curse = 0
Player.bcurse = 0
Player.ccurse = 0
var ar = Player.area;
Player.area = 100;
//Close up the survival arena
with Floor
{
	if sprite_index == sprFloor100C
	{
		instance_destroy(id,false);
		instance_create(x,y,Wall)
		instance_create(x+16,y,Wall);
		instance_create(x+16,y+16,Wall);
		instance_create(x+16,y+16,Wall);
		instance_create(x,y+16,Wall);
	}
}
Player.area = ar;
	with SurvivalWave
		instance_destroy();
	with SurvivalArenaStarter
		instance_destroy();
if instance_exists(GuardianStatue)
{
	with instance_nearest(x,y,GuardianStatue)
		my_health = 0
}
else if !instance_exists(CrownGuardian)
{
	with instance_create(x,y,Portal)
		type = 3
}
snd_play(Player.snd_crwn)

