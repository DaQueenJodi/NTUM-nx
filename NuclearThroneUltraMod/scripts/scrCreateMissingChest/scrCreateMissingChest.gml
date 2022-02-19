///scrCreateMissingChest();
// /@description
///@param
function scrCreateMissingChest(typeOfChest, gol){
	if !instance_exists(Player) || !instance_exists(Floor)
		return;
	var px = Player.x;
	var py = Player.y;
	var furthest = instance_furthest(px,py,Floor);
	var dis = point_distance(px,py,furthest.x,furthest.y);
	var dir = point_direction(px,py,furthest.x,furthest.y);
		while instance_number(typeOfChest) < gol
		{
			var ran = choose(0.3,0.98)
			var useDis = dis * ran;
			with instance_nearest(px+lengthdir_x(useDis,dir),py+lengthdir_y(useDis,dir),Floor)
			{
				instance_create(x+16,y+16,typeOfChest);
			}
			debug("created a missing chest: ",object_get_name(typeOfChest));
		}
}