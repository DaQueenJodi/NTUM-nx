/// @description Spawn projectiles


with instance_create(x,y,GuardianBullet) {
	team = other.team
	motion_add(other.direction, other.speed)
}

instance_destroy();