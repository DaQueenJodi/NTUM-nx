image_speed = 0.4

repeat(10)
{
with instance_create(x,y,Smoke)
motion_add(random(360),1+random(2))
}

ang = random(360)
repeat(20)
{
with instance_create(x,y,Dust)
motion_add(other.ang,6)

ang += 360/20
}


BackCont.shake += 7

team = 0

Humphry=false;//gets assigned true when playing as humphry and firing
HumphryNr=0;
HumphryHit=0;

if instance_exists(Player)
{
if Player.bskin=2
sprite_index=sprRogueCExplosion;
}

