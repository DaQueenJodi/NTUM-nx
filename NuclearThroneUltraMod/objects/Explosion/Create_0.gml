image_speed = 0.4
dmg = 5;
//seperate mask for players
if object_index!=ExplosionNonLethal
instance_create(x,y,ExplosionMask);

repeat(8)
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

team = -1
if instance_exists(Player){
if Player.ultra_got[57]//atom bomb
{
instance_create(x+random(32)-16,y+random(32)-16,ExplosionStop);}}

alarm[0]=3;
if instance_exists(Player)
{

if Player.ultra_got[57]
{
//FIERY EXPLOSIONS
alarm[1]=9;
}

}

Humphry=false;//gets assigned true when playing as humphry and firing
HumphryNr=0;
HumphryHit=0;



