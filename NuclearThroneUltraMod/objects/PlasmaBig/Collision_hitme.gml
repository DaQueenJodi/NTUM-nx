if other.team != team and other.my_health > 0
{

BackCont.shake += 6
image_xscale-=0.3;
image_yscale-=0.3;
if alarm[0]<3
{Sleep(20)
with other
{

my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
}
snd_play(other.snd_hurt)
alarm[0]=5;
}

instance_create(x,y,BulletHit)}

