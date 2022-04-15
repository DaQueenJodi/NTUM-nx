repeat(10)
{with instance_create(x,y,Dust)
motion_add(random(360),3)
}

snd_play(sndExplosion);
instance_create(x,y-24,Explosion);

ang = random(360)

repeat(6)
{with instance_create(x,y-24,EnemyBouncerBullet)
{team=0;
motion_add(other.ang,5)
image_angle = direction;}
ang += 60}

instance_destroy();

