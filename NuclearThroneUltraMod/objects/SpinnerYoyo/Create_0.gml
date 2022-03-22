event_inherited();
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable

image_speed=1;
dmg = 12;
owner = -1;
length = 1;
maxlength = 116;
if instance_exists(Player) && Player.skill_got[19]//Eagle eyes increase range why not
	maxlength += 28;
oDir = 0;
rotation = choose(400,-400);
friction = 0;
alarm[0] = 1;
tx = x;
ty = y;
followOwner = true;