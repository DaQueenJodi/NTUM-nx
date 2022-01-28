snd_play(sndMeatExplo)
snd_play(sndBloodLauncherExplo)

instance_create(x,y,MeatExplosion)

ang = random(360)
instance_create(x+lengthdir_x(32,ang),y+lengthdir_y(32,ang),MeatExplosion)
instance_create(x+lengthdir_x(32,ang+64),y+lengthdir_y(32,ang+64),MeatExplosion)
instance_create(x+lengthdir_x(32,ang+128),y+lengthdir_y(32,ang+128),MeatExplosion)


instance_create(x+lengthdir_x(32,ang+192),y+lengthdir_y(32,ang+192),MeatExplosion)
instance_create(x+lengthdir_x(32,ang+256),y+lengthdir_y(32,ang+256),MeatExplosion)
instance_create(x+lengthdir_x(32,ang+320),y+lengthdir_y(32,ang+320),MeatExplosion)


with instance_create(x,y,BloodStreak)
image_angle = other.ang

with instance_create(x,y,BloodStreak)
image_angle = other.ang+64

with instance_create(x,y,BloodStreak)
image_angle = other.ang+128

with instance_create(x,y,BloodStreak)
image_angle = other.ang+192


with instance_create(x,y,BloodStreak)
image_angle = other.ang+256

with instance_create(x,y,BloodStreak)
image_angle = other.ang+320

