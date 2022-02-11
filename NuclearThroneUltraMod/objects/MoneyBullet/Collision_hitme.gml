if other.team != team and other.my_health > 0 && speed > 3
{
move_bounce_solid(false);
speed*=0.5;
with other
{
    if sprite_index!=spr_hurt
    {
    my_health -= other.dmg
    if instance_exists(Player){
    if Player.ultra_got[28]//roids ultra d
    {my_health -=1;}}
    sprite_index = spr_hurt
    image_index = 0
    }
motion_add(other.direction,8)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation)
instance_create(x,y,BulletHit)

//RECYCLE GLAND
if instance_exists(Player){
if Player.skill_got[16] = 1 and random(3) < 2 +Player.betterrecyclegland && other.sprite_index!=other.spr_hurt
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



