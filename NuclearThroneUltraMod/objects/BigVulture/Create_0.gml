raddrop = 60
maxhealth = 150
meleedamage = 0
size = 1

event_inherited()



//behavior
walk = 0
wkick = 0

corpseTarget = -1;
projectileSpeed = 5.3;
projectileSpeed += clamp(GetPlayerLoops(),0,3);
alarm[1] = 40;
alarm[2] = 1;
alarm[6] = 10;//Intro

spr_idle = sprBigVultureIdle;
spr_walk = sprBigVultureWalk;
spr_hurt = sprBigVultureHurt;
spr_eat = sprVultureEat;
spr_dead = sprVultureDead

snd_hurt = sndVultureHurt
snd_dead = sndVultureDeath


scrTarget();
if target > 0
	direction = point_direction(x,y,target.x,target.y);
else
	direction = random(360);
gunangle = direction;
speed = 1;
if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1
speed = 0;

var d = 16;
instance_create(x,y-d,WallBreak);
instance_create(x,y+d,WallBreak);
instance_create(x-d,y,WallBreak);
instance_create(x+d,y,WallBreak);
instance_create(x+d,y+d,WallBreak);
instance_create(x+d,y-d,WallBreak);
instance_create(x-d,y+d,WallBreak);
instance_create(x-d,y-d,WallBreak);
