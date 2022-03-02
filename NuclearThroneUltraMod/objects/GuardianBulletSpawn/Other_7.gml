/// @description Spawn projectiles

if owner != -1 && instance_exists(owner) && owner.my_health > 0
with instance_create(x,y,GuardianBullet) {
	team = other.team
	motion_add(other.direction, other.speed)
}

instance_destroy();