event_inherited()

var ang = random(360)

repeat(10)
{with instance_create(x,y,Dust)
motion_add(ang,3)
ang += 36}

var am = 3;
var angstep = 360/am;
var l = 10;
repeat(am)
{
	var xx = x + lengthdir_x(l,ang);
	var yy = y + lengthdir_y(l,ang);
	instance_create(xx,yy,PurpleExplosion);
	ang += angstep;
}
snd_play(sndExplosionL);
scrRaddrop(7);