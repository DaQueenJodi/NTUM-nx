/// @description Sync with ultra sound and bye
with Player
{
	var langle = random(360);
	var langstep = 360/8;
	repeat(8)
	{
		with instance_create(x,y,UltraLightning)
		{
			image_angle = langle;
			team = 2
			ammo = 12+random(6)//60
			///if Player.ultra_got[59]=1 
			///ammo+=4;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		langle += langstep;
	}
}
BackCont.shake += 20;
Sleep(20);
instance_destroy();