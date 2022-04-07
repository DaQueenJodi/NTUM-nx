/// @description Start a wazer
speed = 0;
snd_play(sndWazerStart,0,true,false,3,false,false,0.8,false,id);
sprite_index = spr_fire;
wazerRotation = 360 / (wazerDuration+tellTime)
alarm[5] = wazerDuration+tellTime;
wazerDirection = point_direction(x,y,target.x,target.y) - wazerOffset;
myWazer = instance_create(x,y,EnemyWazer);
alarm[1] = wazerDuration + 3;
with myWazer {
	team = other.team;
	image_angle = other.wazerDirection;
	alarm[0] = other.wazerDuration;
	owner = other.id;
	camKick = 0;
	camShake = 2;
	wkick = 0;
}
