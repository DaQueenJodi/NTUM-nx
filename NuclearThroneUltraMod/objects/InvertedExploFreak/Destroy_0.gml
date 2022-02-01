scrDrop(60,0)

snd_play(sndExplosionL)
ang = random(360)
instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(8,ang),SmallExplosion)
instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(8,ang+120),SmallExplosion)
instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(8,ang+240),SmallExplosion)


instance_create(x,y,Explosion);

repeat(8)
{
	with instance_create(x,y,Flame)
	{motion_add(random(360),1+random(2))
	team = other.team
	move_contact_solid(direction,6)
	image_speed=0.5+random(0.2);
	sprite_index= sprFireLilHunter;}
}

event_inherited()


