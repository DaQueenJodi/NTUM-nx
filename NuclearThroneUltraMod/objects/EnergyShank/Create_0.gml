event_inherited();
image_speed = 0.4
if instance_exists(Player)
{
if Player.skill_got[17] = 1
image_speed = 0.2-(Player.betterlaserbrain*0.5)
}

dmg=22;
typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable

