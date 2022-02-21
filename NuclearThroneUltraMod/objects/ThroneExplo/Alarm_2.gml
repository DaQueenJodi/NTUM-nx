instance_create(x+random(128)-64,y+random(128)-64,GreenExplosion)

if alarm[0] < 90
if random(2) < 1
{
instance_create(x+random(128)-64,y+random(128)-64,GreenExplosion)
}
if alarm[0] < 70
{
	if random(2) < 1
	{
	instance_create(x+random(200)-100,y+random(300)-150,GreenExplosion)
	}
	instance_create(x+random(200)-100,y+random(300)-150,GreenExplosion)
}

alarm[2] = 1;