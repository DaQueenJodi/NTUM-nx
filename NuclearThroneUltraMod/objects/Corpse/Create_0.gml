friction = 0.4
image_speed = 0.4
if instance_exists(Player){
	if Player.ultra_got[52] == 1{
		friction=0.21;
	}
}

canspawnportal = true;
alarm[0] = 30;
with Corpse
{
	other.alarm[0] += sign(alarm[0]);	
}
