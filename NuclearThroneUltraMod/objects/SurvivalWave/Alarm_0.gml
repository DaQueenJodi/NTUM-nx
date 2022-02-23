/// @description Spawner
var obj = wave[spawnI].obj;
var xx = centerX + spawnX[posI]+random_range(24,-24);
var yy = centerY + spawnY[posI]+random_range(24,-24);
if variable_struct_exists(wave[spawnI],"xx")
{
	xx = wave[spawnI].xx;
}
if variable_struct_exists(wave[spawnI],"yy")
{
	yy = wave[spawnI].yy;
}
instance_create(xx,yy,obj);
instance_create(xx,yy,SurvivalPortal);
instance_create(xx,yy,WallBreak);
spawnI ++;
if spawnI >= waveLength
{
	alarm[1] = 10;	
}
else
{
	alarm[0] = wave[spawnI-1].time;
}
posI ++
if posI > posIlength
	posI = 0;