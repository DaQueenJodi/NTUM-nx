/// @description Move
if !instance_exists(Player)
{
	instance_destroy();
	exit;
}
var px = Player.x;
var py = Player.y; 
var nextMoveX = lengthdir_x(step,dashDir);
var nextMoveY = lengthdir_y(step,dashDir);
image_xscale = destroyStep;
x = px;
y = py;
var hitWalls = ds_list_create();
var amountOfWalls = instance_place_list(x,y,Wall,hitWalls,false);
while(amountOfWalls > 0)
{
	for (var i = 0; i < amountOfWalls; i++) {
		with hitWalls[| i] {
			instance_destroy();
			instance_create(x,y,FloorExplo);
		}
	}
	ds_list_clear(hitWalls);
	amountOfWalls = instance_place_list(x,y,Wall,hitWalls,false);
}
with Player
{
	if place_meeting(px + nextMoveX,py + nextMoveY,Floor)
	{
		x = px + nextMoveX;
		y = py + nextMoveY;
	}
}
traveled += step;
if (traveled < range)
{
	alarm[0] = 1;
}
else
{
	instance_destroy();
	with instance_create(x+ nextMoveX,y + nextMoveY,SheepHyperDashTrail)
	{
		alarm[0] += (other.looped+1)*3;
		image_angle = other.image_angle;
		image_xscale = other.trailXScale;
		image_yscale = other.trailYScale;
		sprite_index = other.trailSprite;
		bloomSprite = other.bloomSprite;
	}
}
with instance_create(x,y,SheepHyperDashTrail)
{
	alarm[0] += other.looped*3;
	image_angle = other.image_angle;
	image_xscale = other.trailXScale;
	image_yscale = other.trailYScale;
	sprite_index = other.trailSprite;
	bloomSprite = other.bloomSprite;
}
with Player {
	//immunity
	meleeimmunity = 5;
	alarm[3] = 5;
}
looped += 1;