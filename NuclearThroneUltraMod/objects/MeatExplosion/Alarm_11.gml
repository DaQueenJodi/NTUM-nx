/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	UberCont.ultramodSwap = false;
	with instance_create(x,y,Slash)
	{
		scrCopyWeaponMod(other);
		if other.speed > 0
			direction = other.direction;
		else
			direction = random(360);
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+Player.bettermelee)*3
		motion_add(direction,2+longarms)
		image_angle = direction;
		team = other.team
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
}
