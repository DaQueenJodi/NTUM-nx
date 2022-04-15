///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target > 0 {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if random(3) < 1  && point_distance(x,y,target.x,target.y) < 300{
            snd_play(sndToxicBoltGas)
			gunangle = point_direction(x, y, target.x, target.y)
			with instance_create(x, y, SmallGassBullet) {
		        motion_add(other.gunangle, 4)
		        image_angle = direction
		        team = other.team
		    }
            wkick = 4
			alarm[1] += 5;
        }
        else {
            direction = point_direction(x, y, target.x, target.y) + random(180) - 90
            speed = 0.4
            walk = 10 + random(10)
            gunangle = point_direction(x, y, target.x, target.y)
        }

        if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = 10 + random(10)
        alarm[1] += walk;
        gunangle = direction
        if hspeed > 0
        right = 1
        else if hspeed < 0
        right = -1
    }
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = 20 + random(10)
    alarm[1] = walk + 10 + random(30)
    gunangle = direction
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}
