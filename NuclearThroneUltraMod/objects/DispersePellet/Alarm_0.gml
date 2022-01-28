alarm[0]=time;

snd_play(sndPopgun)


with instance_create(x,y,Bullet2)
{motion_add(other.image_angle+90+(random(6)-3),14+random(2))
image_angle = direction
team = other.team
scrCanHumphry();}


with instance_create(x,y,Bullet2)
{motion_add(other.image_angle-90+(random(6)-3),14+random(2))
image_angle = direction
team = other.team
scrCanHumphry();}

BackCont.shake += 2

