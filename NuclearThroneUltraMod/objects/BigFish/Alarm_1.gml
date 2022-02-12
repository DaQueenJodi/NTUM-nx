function beginSuck() {
    sucking = true;
    direction = point_direction(x, y, target.x, target.y)
    snd_play(sndWater2);
    snd_play(snd_fire);

    speed = 0;
    image_index = 0
    sprite_index = spr_fire
	
	with BigFish {
		alarm[5] = 180;
	}

    alarm[2] = 85 + random(25);
    walk = 0 //alarm[2]+20;
    alarm[1] = alarm[2] + 15 + random(15);
}




alarm[1] = 5 + random(15)
if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()

function healMe(amount) {
    my_health += amount;
    with instance_create(x, y - 16, HealFX)
    depth = -3;
    if my_health > maxhealth
    my_health = maxhealth;
}

if target > 0 {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		maxspeed = 2
        if point_distance(x, y, Player.x, Player.y) > 160 && alarm[2] < 1 && alarm[5] < 1 { //SUCK
            beginSuck();
        } else if alarm[2] < 1 {
			var anyfishsucking = false;
			with BigFish {
				if alarm[2] > 0 {
					anyfishsucking = true;
					if random(4) < 1 {
						other.alarm[3] = 1;
						other.alarm[4] = 2;
					}
				}
			}
			
			if !anyfishsucking {
		        if random(6) < 1 {
		            image_index = 0
		            sprite_index = spr_startfire
		            alarm[3] = 15;
		            alarm[4] = 25;
		        } else if random(5) < 1 && my_health < maxhealth && walk == 0 //heal zombiefish heal
		        {
		            healMe(10);
		            repeat(5)
		            instance_create(x + random(8) - 4, y + random(8) - 4, Dust);
		            snd_play(sndWater1);
		        } else {
		            direction = point_direction(x, y, target.x, target.y)
		            walk = 10 + random(20);
		            alarm[1] = walk;
		        }
			}
		}
    } else { //wall in between
		maxspeed = 4
		direction = point_direction(x, y, target.x, target.y);
		walk = 10 + random(20);
		alarm[1] = walk;
		if random(5) < 1 && my_health < maxhealth //heal cause player is hiding
	    {
	        healMe(10);
	        repeat(5)
	        instance_create(x + random(8) - 4, y + random(8) - 4, Dust);
	        snd_play(sndWater2);
	    }
	}
} //no target\/
else if random(5) < 1 {
    motion_add(random(360), 0.8)
    walk = 20 + random(10)
    alarm[1] = walk;
}
