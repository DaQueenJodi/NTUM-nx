event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects


image_speed = 0.4
image_yscale=4;
target=enemy;
Originalangle=image_angle;
amountofenemies=0;
dmg = 6;
if instance_exists(Player) && Player.ultra_got[63]
{
	dmg += 1;
	image_yscale += 2;
	dmg*=(Player.level*0.85);
}
/* */
/*  */
