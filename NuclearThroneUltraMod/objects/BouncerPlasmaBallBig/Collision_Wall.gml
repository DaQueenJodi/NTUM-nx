with instance_create(xprevious,yprevious,BouncerPlasmaBall)
{
	motion_add(other.direction+180+30,4)
	scrCanHumphry();
	image_angle = direction;
	team = other.team
}
with instance_create(xprevious,yprevious,BouncerPlasmaBall)
{
	motion_add(other.direction+180-30,4)
	scrCanHumphry();
	image_angle = direction;
	team = other.team
}

move_bounce_solid(false);

image_xscale-=0.4;
image_yscale-=0.4;

instance_create(x,y,Dust)

snd_play(sndShotgunHitWall,random_range(0.98,1.02),true,true,1,false);

