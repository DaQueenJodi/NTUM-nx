ammo--;
if ammo>0
alarm[0]=time
else
instance_destroy();

dir = image_angle;
if upgraded
{
instance_create(x+lengthdir_x(exploPos,dir)+lengthdir_x(16,dir+90),y+lengthdir_y(exploPos,dir)+lengthdir_y(16,dir+90),RogueExplosion);
}
else
instance_create(x+lengthdir_x(exploPos,dir),y+lengthdir_y(exploPos,dir),RogueExplosion);

exploPos+=32;

snd_play(sndIDPDNadeExplo);
visible=false;

