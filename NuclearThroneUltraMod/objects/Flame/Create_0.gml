event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0//2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable

image_speed = 0.3+random(0.2)
friction = 0.15
image_angle = random(360)
alarm[2] = 1
dmg=2;
home=false;

if instance_exists(Player)
{
if Player.race=24
dmg=3

if Player.ultra_got[95]
{
home=true;
dmg=4;
}

}

/* */
/*  */
