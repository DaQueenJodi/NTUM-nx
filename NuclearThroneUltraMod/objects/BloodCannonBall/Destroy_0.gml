ang = random(360)
with instance_create(x+lengthdir_x(32,ang),y+lengthdir_y(24,ang),MeatExplosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(32,ang+100),y+lengthdir_y(24,ang+100),MeatExplosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(32,ang+200),y+lengthdir_y(24,ang+200),MeatExplosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(32,ang+290),y+lengthdir_y(24,ang+290),MeatExplosion)
scrCanHumphry();

with instance_create(x,y,BloodStreak)
image_angle = other.ang

with instance_create(x,y,BloodStreak)
image_angle = other.ang+120

with instance_create(x,y,BloodStreak)
image_angle = other.ang+240

snd_play(sndBloodCannonEnd);
audio_stop_sound(sndBloodCannonLoop)

