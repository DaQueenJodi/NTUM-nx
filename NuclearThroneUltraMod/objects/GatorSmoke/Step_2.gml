if alarm[2] < 1 && (instance_number(enemy) = 0 || my_health < maxhealth)
{
	alarm[2] = 6

	with instance_create(x, y, Shell) {
		sprite_index = sprCigarette
		motion_add(random(360), 2)
	}
}

