///@description AI
alarm[1] = actTime + random(actTime);
scrTarget()
if target > 0 {
	var ran = random(100);
	if ran > 75
	{
		ammo = maxAmmo;
		event_user(0);
	}
	else if ran > 55
	{
		//Do fast spinny attack
		event_user(1);
	}
	else if ran > 25
	{
		//Accurate shot
		event_user(2);	
	}
	else if ran > 10
	{
		//EXPLOSIVE WAZER BOI
		event_user(3);
	}
	if ran < 10
	{
		rotationSpeed *= -1;	
	}
}
