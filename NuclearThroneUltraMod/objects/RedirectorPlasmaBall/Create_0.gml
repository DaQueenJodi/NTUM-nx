event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
//friction=0.4;
dmg = 10

if instance_exists(Player)
{
if Player.skill_got[17] = 1
dmg = 15+(Player.betterlaserbrain*2)
}
originalDirection=point_direction(x,y,mouse_x,mouse_y);
direction=originalDirection;
image_speed = 0.5
resetSpeed=false;

maxspeed = 5.5;
turned = false;
alarm[1] = 2;