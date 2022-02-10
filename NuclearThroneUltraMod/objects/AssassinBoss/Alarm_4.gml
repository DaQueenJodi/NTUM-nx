/// @description teleport after stun

with instance_nearest(instance_furthest(x+random(120)-60,y+random(120)-60,Floor).x,instance_furthest(x+random(120)-60,y+random(120)-60,Floor).y,Floor)
{
	var assx = other.x;
	var assy = other.y;
	other.x = x+16;
	other.y = y+16;
	other.alarm[5] = 15;
	instance_create(assx,assy,AssassinTeleport);
	repeat(5){
		with instance_create(other.x,other.y,Smoke)
		motion_add(random(360),1+random(3))
	}
}

alarm[1] = 1;
alarm[2] = 0;