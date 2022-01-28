event_inherited()
scrDrop(40,0)


snd_play(sndNukeExplosion)
ang = random(360)
repeat(6)
{
instance_create(x+lengthdir_x(11,ang),y+lengthdir_y(11,ang),Explosion)
ang += 360/8
}

repeat(3)
{
instance_create(x+lengthdir_x(7,ang),y+lengthdir_y(7,ang),SmallExplosion)
ang += 360/3
}


