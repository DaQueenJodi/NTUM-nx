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
size = 10
friction = 2;
meleedamage = 0;
active = false;
immune = true;
intro = false;
spr_idle = sprNothingOn
spr_hurt = sprNothingMiddleHurt
spr_dead = sprNothingDeath;
spr_l = sprNothingLeft;
spr_r = sprNothingRight;
dropRad = 200;

event_inherited()


snd_hurt = sndNothingHurtHigh;

sprite_index = spr_idle;

with instance_create(x,y,ThroneFlame)
{
	xOffset = -96;
	yOffset = -48;
}
with instance_create(x,y,ThroneFlame)
{
	xOffset = 96;
	yOffset = -48;
}
with instance_create(x,y,ThroneFlame)
{
	xOffset = -96;
	yOffset = 0
}
with instance_create(x,y,ThroneFlame)
{
	xOffset = 96;
	yOffset = 0;
}
with ThroneFlame
{
	owner=other.id;
	depth = other.depth - 1;	
}
	

image_speed = 0;