/// @description Lines
if owner > -1 && instance_exists(owner)
{
	var ran = 4;
	draw_set_color(c_black);
	draw_line(x+random_range(ran,-ran),y+random_range(ran,-ran),owner.x+random_range(ran,-ran),owner.y+random_range(ran,-ran));
	draw_set_color(c_white);
	draw_line(x+random_range(ran,-ran),y+random_range(ran,-ran),owner.x+random_range(ran,-ran),owner.y+random_range(ran,-ran));
	if instance_exists(Player) && Player.skill_got[5] == 1
	{
		draw_line(x+random_range(ran,-ran),y+random_range(ran,-ran),owner.x+random_range(ran,-ran),owner.y+random_range(ran,-ran));
	}
}