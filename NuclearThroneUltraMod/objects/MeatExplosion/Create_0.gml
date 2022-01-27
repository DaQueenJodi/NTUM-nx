image_speed = 0.4

dir = random(360)
repeat(5)
{
with instance_create(x,y,Smoke)
motion_add(other.dir,3+random(1))
dir += 360/6
}
dmg=4;
if instance_exists(Player)
{
if Player.ultra_got[16]//Doomed melting
dmg=6;
}
snd_play(sndMeatExplo)

BackCont.shake += 6

team = 2

Humphry=false;//gets assigned true when playing as humphry and firing
HumphryNr=0;
HumphryHit=0;

