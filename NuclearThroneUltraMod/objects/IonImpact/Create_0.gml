image_speed = 0.4

BackCont.shake += 4

team = 2

repeat(3)
instance_create(x,y,Smoke)

dmg=5;
if instance_exists(Player)
{
if Player.skill_got[17] = 1
dmg = 10+(Player.betterlaserbrain*2);
}

