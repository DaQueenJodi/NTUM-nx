repeat(bullets)
{
with instance_create(x,y,Bullet2)
{motion_add(random(360),8+random(8))
image_angle = direction
team = other.team
scrCanHumphry();}
}
Sleep(20)
repeat(6)
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(3))
}

BackCont.shake += 8
snd_play(sndFlakExplode);

