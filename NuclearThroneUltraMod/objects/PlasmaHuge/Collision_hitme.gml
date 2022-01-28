if other.team != team and other.my_health > 0
{
Sleep(50)
BackCont.shake += 6
image_xscale-=0.2;
image_yscale-=0.2;
with other
{
if sprite_index!=spr_hurt{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0}
motion_add(other.direction,12)
}
snd_play(other.snd_hurt)
instance_create(x,y,BulletHit)}

