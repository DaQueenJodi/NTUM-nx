instance_create(x,y,Floor);
instance_create(x+32,y,Floor);
instance_create(x-32,y,Floor);
instance_create(x-32,y+32,Floor);
instance_create(x-32,y-32,Floor);
instance_create(x+32,y+32,Floor);
instance_create(x+32,y-32,Floor);
instance_create(x,y+32,Floor);
instance_create(x,y-32,Floor);
instance_create(x+64,y-32,Floor);
instance_create(x-64,y-32,Floor);
x += 16;
y += 16;
y += 64;
maxhealth = 1650//retail has 1500 but the parts take 100 health each away upon destruction
size = 8;
friction = 6;
meleedamage = 0;
active = false;
immune = true;
intro = false;
spr_idle = sprNothingOn;
spr_hurt = sprNothingOff;
spr_dead = sprNothingDeath;
raddrop = 500;
disable = false;
firstEntry = false;
prevImageIndex = 0;
cantrishot = true;

event_inherited()
walk = 0;
alarm[1] = 0;

snd_hurt = sndBecomeNothingHurt;
snd_dead = sndNothingDeath1

sprite_index = spr_idle;

with instance_create(x,y,ThroneFlame)
{
	xOffset = -81;
	yOffset = -59;
}
with instance_create(x,y,ThroneFlame)
{
	xOffset = 81;
	yOffset = -59;
}
with instance_create(x,y,ThroneFlame)
{
	xOffset = -81;
	yOffset = -3;
}
with instance_create(x,y,ThroneFlame)
{
	xOffset = 81;
	yOffset = -3;
}
with ThroneFlame
{
	owner=other.id;
	depth = other.depth - 10;	
}
	
leftSide = instance_create(x,y,NuclearThrone1Side);
rightSide = instance_create(x,y,NuclearThrone1Side);
with leftSide {
	xOffset = -64;
	legXoffset = -50;
}
with rightSide {
	xOffset = 64;
	sprite_index = sprNothingRight;
	spr_idle = sprNothingRight;
	spr_hurt = sprNothingRightHurt;
	isLeft = false;
	gunangle[0] = 270;
	gunangle[1] = 240;
	gunangle[2] = 210;
	spriteXscale = 1;
	image_xscale = -1;
	legXoffset = 50;
	walk = sprite_get_number(sprNothingLeg)*0.5;
}
with NuclearThrone1Side
{
	team = other.team;
	owner = other.id;
	depth = other.depth-1;
	yOffset = 16;
}
image_speed = 0;
walkDir = 0;

beamY = y;
fireTriShot = false;
bigballs = false;

aTime = 40;
aTime -= min(GetPlayerLoops()*2,10);
difficultyStep = 0;
snd_loop(sndBecomeNothingIdle);

xStart = x;