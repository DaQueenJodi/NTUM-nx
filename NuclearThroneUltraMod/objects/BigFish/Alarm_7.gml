/// @description end tackle

maxspeed = 3

var fish = 0;
with BoneFish {
	if point_distance(other.x, other.y, x, y) < 120 {
		fish++;
	}
}

if random(3) < 1 && fish < 2 {
	image_index = 0
	sprite_index = spr_startfire
	alarm[3] = 3;
	alarm[4] = 12;
}