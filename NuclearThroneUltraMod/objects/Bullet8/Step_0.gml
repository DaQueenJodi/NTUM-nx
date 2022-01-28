if instance_exists(Player){
if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
{
Player.clicked=0;

//snd_play(sndDirector);

audio_stop_sound(sndDirector)
audio_sound_pitch(sndDirector,random_range(0.9,1.1))
audio_play_sound(sndDirector,100,0)


BackCont.shake += 0.2
instance_create(x,y,Smoke);
speed+=6;
direction=point_direction(x,y,mouse_x,mouse_y);
turned=true;
}
}

image_angle=direction;

