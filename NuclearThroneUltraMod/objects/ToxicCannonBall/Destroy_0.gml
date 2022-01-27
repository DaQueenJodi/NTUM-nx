repeat(14)
{
with instance_create(x,y,ToxicThrowerGas)
{motion_add(random(360),1+random(4))
move_contact_solid(direction,14)
scrCanHumphry();}



}

snd_play(sndToxicBarrelGas);
audio_stop_sound(sndFlamerLoop)

