if other.team != team and other.my_health > 0
{

BackCont.shake += 2
image_xscale-=0.3;
image_yscale-=0.3;
with other
{
if sprite_index!=spr_hurt
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
snd_play(snd_hurt, hurt_pitch_variation)

motion_add(other.direction,6)
}
}



//instance_create(x,y,BulletHit)
}

