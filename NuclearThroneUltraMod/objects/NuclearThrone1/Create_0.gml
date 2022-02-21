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
maxhealth = 1500
size = 8;
friction = 6;
meleedamage = 0;
active = false;
immune = true;
intro = false;
spr_idle = sprNothingOn;
spr_hurt = sprNothingOff;
spr_dead = sprNothingDeath;
dropRad = 200;
disable = false;
prevImageIndex = 0;

event_inherited()
walk = 0;
alarm[1] = 0;

snd_hurt = sndNothingHurtHigh;

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