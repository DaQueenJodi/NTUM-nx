function getMedianAngle(a1, a2) {
	if abs(a1 - a2) >= 180 {
		return (a1 + a2) / 2 - 180
	}
	return (a1 + a2) / 2
}

function reverseAngle(angle) {
	if angle - 180 < 0 {
		return angle + 180
	}
	return angle - 180
}

function beginSuck() {
    sucking = true;
    direction = point_direction(x, y, target.x, target.y)
    snd_play(sndWater2);
    snd_play(snd_fire);

    speed = 0;
    image_index = 0
    sprite_index = spr_fire
	
	with BigFish {
		alarm[5] = 120;
	}

    alarm[2] = 75 + random(25);
    walk = 0 //alarm[2]+20;
    alarm[1] = alarm[2] + 15 + random(15);
}




alarm[1] = 5 + random(15)
if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()

function healMe(amount) {
    my_health += amount;
	snd_play(sndHealthPickup);
    with instance_create(x, y - 16, HealFX)
    depth = -3;
    if my_health > maxhealth
    my_health = maxhealth;
}

if target > 0 && alarm[6] < 1 && alarm[7] < 1 {
	if point_distance(x,y,target.x,target.y) < 75 && random(2) < 3 {
		//BITE TACKLE SHIT YO! DANGER IN THE HOUSE!
		snd_play(snd_tackle)
		persistent_direction = point_direction(x, y, target.x, target.y)
		alarm[1] += 50
		alarm[4] = 0
		alarm[3] = 0
		alarm[5] = 40
		alarm[6] = 20
	} else if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		maxspeed = 3 - 1.5*(my_health/maxhealth)
        if ((random(7) < 1 && point_distance(x, y, Player.x, Player.y) > 100) ) && alarm[2] < 1 && alarm[5] < 1 { //SUCK
            beginSuck();
        } else if alarm[2] < 1 {
			var anyfishsucking = false;
			with BigFish {
				if alarm[2] > 0 {
					// someone else sucking?
					// walk away from where the player will travel to make it fair
					anyfishsucking = true;
					
					if point_distance(other.x, other.y, target.x, target.y) < 160
					other.walk = other.alarm[1]
					var targetdir = point_direction(other.x, other.y, target.x, target.y)
					var fishdir = point_direction(other.x, other.y, x, y)
					direction = reverseAngle(getMedianAngle(targetdir, fishdir))
				}
			}
			
			if !anyfishsucking {
				
				var fish = 0;
				
				with BoneFish {
					if point_distance(other.x, other.y, x, y) < 125 {
						fish++;
					}
				}
				
				var maxfish = 2
				if instance_exists(Player) {
					maxfish += Player.loops*5
				}
				
		        if fish < maxfish && (point_distance(x, y, Player.x, Player.y) > 75) {
		            image_index = 0
		            sprite_index = spr_startfire
		            alarm[3] = 15;
		            alarm[4] = 28;
		        } else {
		            direction = point_direction(x, y, target.x, target.y)
		            walk = 10 + random(10);
		            alarm[1] = walk;
		        }
			}
		}
    } else { //wall in between
		maxspeed = 4
		direction = point_direction(x, y, target.x, target.y);
		walk = 10 + random(10);
		alarm[1] = walk;
		if my_health < maxhealth //heal cause player is hiding
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
