with Player
{instance_destroy();}

with instance_create(x,y,EuphoriaShield)
image_speed=0.2;

instance_create(x,y,Player);
snd_play(sndStatueCharge);
with Player//Data to keep
{
alarm[3]=300;//immunity
//bskin=other.bskin;
ultimategamble=other.ultimategamble;
skeletonlives=other.skeletonlives;
race = other.race
crown = other.crown
lastarea = other.lastarea;
area = other.area//other.lastarea;
loops = other.loops;
hard = other.hard;
kills = other.kills;
subarea=other.subarea;
event_perform(ev_alarm,0);
//event_perform(ev_other,ev_room_end);
visible=true;
snd_play(snd_wrld);
}



instance_destroy();

