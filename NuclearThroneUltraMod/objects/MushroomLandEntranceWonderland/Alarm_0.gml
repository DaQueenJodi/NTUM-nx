/// @description Sad potato too late
sprite_index = spr_hurt;
image_index = 0;
snd_play(snd_hurt,0.1,true);
my_health -= 5;
alarm[0] = sprite_get_number(spr_hurt)/image_speed;

