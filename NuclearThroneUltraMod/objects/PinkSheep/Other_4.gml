/// @description No longer persistent
persistent = false;
my_health = maxhealth;
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
}
alarm[0] = 10;
