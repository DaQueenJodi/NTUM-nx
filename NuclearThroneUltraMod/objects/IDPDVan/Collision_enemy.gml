/// @description overwrite enemy overlap code
if other.sprite_index!=other.spr_hurt
{

with other
{

my_health -= other.meleedamage;
sprite_index = spr_hurt
image_index = 0
snd_play(snd_hurt, hurt_pitch_variation)

}

}