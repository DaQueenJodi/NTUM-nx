function scrMods() {
	//List of mods here
	var notToxi = 10;
	if instance_exists(Player) && Player.race == 23//Frog is oke with toxic!
	notToxi = -1;
	var choice;
	do 
	{
		choice = irandom_range(1,18);
		notToxi--;
	}
	until (choice != 1 || notToxi < 0)
	return choice;
	/*
	1. Toxic
	2. Explosion
	3. Flame
	4. Frost
	5. Blood
	6. Lightning
	7. Kraken
	8. Swarm
	9. Bouncer
	10. Shotgun
	11. Projectile Speed
	12. Reload Speed
	13. Homing
	14. Radiation
	15. Splinter
	16. Morph
	17. Pickups
	18. Gundrops
	*/
}
