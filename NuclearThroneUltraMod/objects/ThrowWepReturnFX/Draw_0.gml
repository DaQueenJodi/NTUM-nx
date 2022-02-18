/// @description Lines
if owner > -1 && instance_exists(owner)
{
	var ran = 4;
	repeat(2)
	draw_line(x+random_range(ran,-ran),y+random_range(ran,-ran),owner.x+random_range(ran,-ran),owner.y+random_range(ran,-ran));
}