instance_create(x,y,DiscTrail)

if alarm[0]<1
team=0;

if fire
{

        with instance_create(x/*-8*/,y,TrapFire)
            {
            sprite_index = sprFireLilHunter
        
            motion_add(other.direction+180+random(16)-6,random(3))
            image_angle = direction
			image_speed += 0.3;
            team = 1
            }

}
if speed < minSpeed
	speed = minSpeed;
if speed > maxSpeed
	speed = maxSpeed;
