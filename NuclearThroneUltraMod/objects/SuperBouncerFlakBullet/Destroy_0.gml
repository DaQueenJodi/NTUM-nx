snd_play(sndSuperFlakExplode)

repeat(5)
{
with instance_create(x,y,BouncerFlakBullet)
{motion_add(random(360),8+random(8))
image_angle = direction
team = other.team
scrCanHumphry();}
}
Sleep(35)

repeat(5)
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(3))
}

BackCont.shake += 8

