/// @description Explode crystals
var ds = ds_list_size(myCrystals);
var am = 7;
var astep = 360/7;
var ang = 0;
for (var i = 0; i < ds; i++) {
	with myCrystals[| i]
	{
		my_health = 0;
		instance_create(x,y,BigWallBreak);
		sprite_index = spr_fire
		repeat(am)
		{
			with instance_create(x,y,EnemyLaser)
			{
				image_angle = ang+random(6)-3
				team = other.team
				event_perform(ev_alarm,0)
			}
			ang += astep;
		}
	}
}
ds_list_clear(myCrystals);