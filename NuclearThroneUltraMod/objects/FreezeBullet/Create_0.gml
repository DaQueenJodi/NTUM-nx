event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
freezetime=15;
dmg=4;//normal bullet is 3 dmg
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable

if instance_exists(Player)
{

if Player.race=24//elementor's passive
dmg=5;

}

/* */
/*  */
