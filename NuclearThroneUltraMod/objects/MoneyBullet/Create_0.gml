event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable


friction=0.1;

image_angle=random(360);

rotationdir=choose(false,true);

alarm[0]=10+random(60);

alarm[1]=30+random(120);

image_speed=0;

/* */
/*  */
