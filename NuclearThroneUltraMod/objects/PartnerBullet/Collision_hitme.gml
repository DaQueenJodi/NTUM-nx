if other.team != team and other.my_health > 0
{instance_destroy()
with other
{
my_health -= 3
if instance_exists(Player){
if Player.ultra_got[28]//roids ultra d
{my_health -=2;}}
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
}
snd_play(other.snd_hurt)
instance_create(x,y,BulletHit)



}



