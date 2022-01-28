audio_stop_sound(snd)

snd_play(sndNukeExplosion)
ang = random(360)
repeat(8)
{
with instance_create(x+lengthdir_x(12,ang),y+lengthdir_y(12,ang),Explosion)
scrCanHumphry();
ang += 360/8
}

repeat(3)
{
with instance_create(x+lengthdir_x(8,ang),y+lengthdir_y(8,ang),SmallExplosion)
scrCanHumphry();
ang += 360/3
}

repeat(6)
{
with instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(16,ang),SmallExplosion)
scrCanHumphry();
ang += 360/6
}

