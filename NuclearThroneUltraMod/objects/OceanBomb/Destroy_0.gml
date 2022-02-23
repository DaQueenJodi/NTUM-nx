/// @description No explosion but instead spikes
instance_create(x,y,WallBreak);
var accuracy = 1;
if instance_exists(Player)
{
	accuracy = Player.accuracy;	
}
var amount = 14;
var angle = image_angle;
var angleStep = 360/8;
snd_play(sndRoll);
snd_play(sndBloodLauncher);

snd_play(choose(sndWater1,sndWater2) );
with instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
scrCanHumphry();
repeat(amount)
{
	with instance_create(x,y,Tentacle)
	{
		image_angle = angle+(random(20)-10)*accuracy
		creator=other.id;
		team = other.team
		ammo = 16
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		{
		sprite_index=sprTentacleSpawn
		image_angle = other.image_angle
		}

		with instance_create(x,y,FishBoost)
		{
		motion_add(angle+random(30)-15,4+random(4) );
		}

	}
	angle += angleStep;
}
BackCont.shake += 7;