//event_inherited();
if (!canExplodeBlade && (object_index == Grenade) && GetPlayerUltramod() == ultramods.bladeGrenade)
	exit;
	
if sticky = 1
{

snd_play(sndExplosionL)
ang = random(360)
with instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(8,ang),SmallExplosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(8,ang+120),SmallExplosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(8,ang+240),SmallExplosion)
scrCanHumphry();

with instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(18,ang),Explosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(18,ang+120),Explosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(18,ang+240),Explosion)
scrCanHumphry();
}
else
{
snd_play(sndExplosion)
with instance_create(x,y,Explosion)
scrCanHumphry();
}

