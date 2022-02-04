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
snd_play(other.snd_hurt, other.hurt_pitch_variation)
with instance_create(x,y,BulletHit)
sprite_index=sprIDPDBulletHit

//RECYCLE GLAND
if instance_exists(Player)&&(norecycle==false){
if Player.skill_got[16] = 1 and random(3) < 2 +Player.betterrecyclegland
{
if !(Player.ammo[1] >= Player.typ_amax[1])
{
Player.ammo[1] += 1
dir = instance_create(x,y,PopupText)
dir.mytext = "+1"
dir.alarm[1]=5;
dir.time=5;
}

}}

}



