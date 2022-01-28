snd_play(sndBouncerFlakExplo)
repeat(12)
{
with instance_create(x,y,Bullet3)
{motion_add(random(360),5.1)
image_angle = direction
team = other.team
scrCanHumphry();}
}
Sleep(18)

repeat(6)
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(3))
}

BackCont.shake += 8

