/// @description Fill up crystal list
ds_list_clear(myCrystals)
instance_create(x,y,WallBreak);
repeat(ammo)
{
	var crystal = noone;
	var ran = random(100)
	if ran < 1 && canSuperAlt
	{
		//This one percent chance for cursed spiders is actually in retail
		instance_create(x,y,CursedSpider);
	}
	else if random(35) < 1//random 30
	{
		crystal = instance_create(x,y,altCrystal);
	}
	else
	{
		crystal = instance_create(x,y,normalCrystal);
	}
	if crystal != noone
	{
		with crystal
			alarm[1] *= 0.5;
		ds_list_add(myCrystals,crystal);
	}
}
gunangle = random(360);
crystalDis = 14;
alarm[2] = 40;
alarm[1] += 40;