if(instance_exists(Player)){
	if isog && GetPlayerUltramod() == ultramods.heavyBoltMegaLaser
	{
		audio_stop_sound(sndMegaLaser);
		snd_play(sndHeavyCrossbow);
		instance_destroy(id,false);
		with instance_create(x,y,HeavyBolt)
		{motion_add(other.image_angle,24)
		image_angle = direction
		team = other.team
		alarm[11] = 0;}
	}
	isog = false;
	if (aimed=false && team == 2)
	{
		aimed=true;
		image_angle = scrAimAssistLaser(image_angle);
	}
}

var dir;
dir = 0

do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 16) or place_meeting(x,y,Wall) or dir > 160

alarm[0] = 2

image_xscale = point_distance(x,y,xstart,ystart)/2
instance_create(x,y,Smoke)

