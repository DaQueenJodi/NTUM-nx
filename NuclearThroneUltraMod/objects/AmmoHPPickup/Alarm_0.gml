if blink < 0 {
    instance_create(x, y, SmallChestFade)
	if supercursed {
		var ang = random(360)
		snd_play(sndExplosionL)
		repeat(5) {
			instance_create(x + lengthdir_x(16,ang), y + lengthdir_y(16,ang), Explosion)
			ang += 72
		}
	}
	if cursed {
		var ang = random(360)
		snd_play(sndExplosion)
		repeat(3) {
			instance_create(x + lengthdir_x(8,ang), y + lengthdir_y(8,ang), SmallExplosion)
			ang += 120
		}
	}
    instance_destroy()
}
else {
    alarm[0] = 2
    blink -= 1
    if visible = 1
    visible = 0
    else visible = 1
}
