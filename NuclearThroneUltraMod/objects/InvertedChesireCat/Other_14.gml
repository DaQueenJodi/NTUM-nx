/// @description Start a wazer
speed = 0;
snd_play(sndWazerStart,0,true,false,3,false,false,0.8,false,id);
sprite_index = spr_fire;
wazerRotation = 360 / (wazerDuration+tellTime)
alarm[5] = wazerDuration+tellTime;
wazerDirection = point_direction(x,y,target.x,target.y) - wazerOffset;
myWazers = [];
myWazers[0] = instance_create(x,y,EnemyWazer);
with myWazers[0] {
	team = other.team;
	image_angle = other.wazerDirection;
	alarm[0] = other.wazerDuration;
	owner = other.id;
	camKick = 0;
	camShake = 2;
	wkick = 0;
}
myWazers[1] = instance_create(x,y,EnemyWazer);
alarm[1] = wazerDuration + 5;
with myWazers[1] {
	team = other.team;
	image_angle = other.wazerDirection+180;
	alarm[0] = other.wazerDuration;
	owner = other.id;
	camKick = 0;
	camShake = 2;
	wkick = 0;
}
