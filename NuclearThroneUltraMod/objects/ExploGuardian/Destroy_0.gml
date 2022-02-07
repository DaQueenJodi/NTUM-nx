scrDrop(20,0)

if (charge || fire)
{
	var amount = 13;
	var angle = random(360);
	var angleStep = 360/amount;
	repeat(amount)
	{
		with instance_create(x,y,ExploGuardianBullet)
		{
			motion_add(angle,other.projectileSpeed);
			image_angle = direction
			team = other.team
		}
		angle += angleStep;
	}
	snd_dead = snd_dead_charge;
}
event_inherited()

instance_create(x,y,WallBreak);