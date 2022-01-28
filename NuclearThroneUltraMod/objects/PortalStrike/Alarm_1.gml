ammo--;
if ammo>0
alarm[1]=time
else
instance_destroy();

dir = image_angle;

instance_create(x+lengthdir_x(exploPos,dir)+lengthdir_x(16,dir-90),y+lengthdir_y(exploPos,dir)+lengthdir_y(16,dir-90),RogueExplosion);

//exploPos+=32;

snd_play(sndIDPDNadeExplo);

