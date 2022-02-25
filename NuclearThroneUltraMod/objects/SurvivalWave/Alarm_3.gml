/// @description Teller
var xx = centerX + spawnX[posItell]+random_range(24,-24);
var yy = centerY + spawnY[posItell]+random_range(24,-24);
if variable_struct_exists(wave[spawnItell],"xx")
{
	xx = wave[spawnItell].xx;
}
else
{
	wave[spawnItell].xx = xx;	
}
if variable_struct_exists(wave[spawnItell],"yy")
{
	yy = wave[spawnItell].yy;
}
else
{
	wave[spawnItell].yy = yy;
}
instance_create(xx,yy,SurvivalPortal);
instance_create(xx,yy,WallBreak);
spawnItell ++;
if spawnItell < waveLength
{
	alarm[3] = wave[spawnItell-1].time;
}
posItell ++
if posItell > posIlength
	posItell = 0;