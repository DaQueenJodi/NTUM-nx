/// @description Start charge
speed *= 0.1;
fired = false;
charge = true;
depth = -12;
sprite_index = spr_charge;
spr_idle = spr_charge;
spr_walk = spr_charge;
spr_hurt = spr_charge_hurt;
snd_play(sndExploGuardianCharge);
image_index = 0;
imageIndex = 0;
alarm[1] = 120;

var loops = GetPlayerLoops();
var i = 0;
myCompanions = [];
for (var i = 0; i < amountOfProjectiles; i++) {
	myCompanions[i] = instance_create(x,y,CubeGuardianSquareBullet);
}
var dir = 0;
var rotSpeed = rotateSpeed;
rotSpeed += min(0,loops*0.01);
i = 0;
var dis = distance;
var rotationdir = choose(1,-1);
var idd = id;
var lp = random(1);
//Euphoria
if instance_exists(Player)
{
if Player.skill_got[12] = 1
{
	rotSpeed = rotSpeed*0.7
	dis -= 8;
}
}
//var between = 1 / (amountOfProjectiles / 4);
for (var i = 0; i < amountOfProjectiles; i++) {
	with myCompanions[i]
	{
		owner = idd;
		dirStep = dir;
		rotationDirection = rotationdir;
		rotateSpeed = rotSpeed;
		maxdistance = dis;
		lerpStep = lp;
		debug("lp: ",lp);
	}
	dir += 1;
	/*
	if dir > 3
	{
		dir = 0;
		lp += between;
		if lp > 1
		{
			lp -= 1;
			dir ++;
		}
	}
	*/
}