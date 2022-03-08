/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.splinterBullet
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet4)
	{
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
} else if um == ultramods.splinterPellet
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet5)
	{
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
}