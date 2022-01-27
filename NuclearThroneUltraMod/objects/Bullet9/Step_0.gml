image_angle = direction


if speed < 3 and sprite_index != sprBullet9Disappear
{
sprite_index = sprBullet9Disappear
image_index = 0
image_speed = 1
}
if instance_exists(Player){
if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
{


audio_stop_sound(sndDirector)
audio_sound_pitch(sndDirector,random_range(0.9,1.1))
audio_play_sound(sndDirector,100,0)


dmg=3;
alarm[1]=2;

BackCont.shake += 0.2
instance_create(x,y,Smoke);
speed+=8;
direction=point_direction(x,y,mouse_x,mouse_y);
turned=true;
}
}

