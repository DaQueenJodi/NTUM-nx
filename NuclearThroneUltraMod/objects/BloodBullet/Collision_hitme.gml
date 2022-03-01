if other.team != team and other.my_health > 0
{instance_destroy()
with other
{
my_health -= other.dmg
if instance_exists(Player){
if Player.ultra_got[28]//roids ultra d
{my_health -=2;}}
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,4)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with(instance_create(x,y,BulletHit))
{image_blend = make_color_rgb(174,58,45);}

//RECYCLE GLAND
if instance_exists(Player){
if Player.skill_got[16] = 1 and random(3) < 2+Player.betterrecyclegland
{Player.ammo[1] += 1
instance_create(x,y,RecycleGland);}}

}



