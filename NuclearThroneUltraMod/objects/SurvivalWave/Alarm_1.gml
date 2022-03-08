/// @description Winner?
if UberCont.opt_gamemode != 25
{
	if instance_number(enemy) <= instance_number(IDPDVan)
	{
		//var maxU = UberCont.maxUltramod;
		var yy = centerY-96;
		
		var w = 4;
		var h = 5;
		
		var xstep = 256/w;
		var ystep = 256/h;
		var i = 1;
		for (var iy = 0; iy < h; iy++) {
			var xx = centerX-96;
			for (var ix = 0; ix < w; ix++) {
			    with instance_create(xx,yy,UltraMod)
				{
					instance_create(x,y,SurvivalPortal);
					ultramod = i;
				}
				i++;
				xx += xstep;
			}
			yy += ystep;
		}
		with Floor
		{
			if styleb
			sprite_index = sprFloor100C;
			else
			sprite_index = sprFloor100;
		}
		with FloorExplo
		{
			sprite_index = sprFloor100Explo;	
		}
		with MusCont
		{
			audio_stop_sound(song);
			song = mus100
			snd_loop(song);
		}
	}
	else
	{
		alarm[1] = 60;	
	}
}
else
{
	if instance_number(enemy) <= instance_number(IDPDVan)
	{
		instance_create(centerX,centerY,Portal);
	}
	else
	{
		alarm[1] = 60;	
	}
}