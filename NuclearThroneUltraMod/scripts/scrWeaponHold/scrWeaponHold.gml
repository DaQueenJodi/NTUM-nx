function scrWeaponHold() {
	if wep_type[wep] != 0 and wep != 24 and wep != 36
	and wep != 377 and wep != 53 && wep!=198 && wep!=222 && wep!=223 and wep != 332//some melee exceptions
		wepangle = 0
	else if wepangle = 0
		wepangle = choose(120,-120)
}
