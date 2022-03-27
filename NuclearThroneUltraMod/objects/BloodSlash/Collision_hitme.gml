if other.team != team
{
if hit=false{
with other
{
//repeat(other.dmg){
my_health-=2;
if !instance_exists(MeatExplosion)
{
instance_create(x,y,MeatExplosion);}
else{
var ang;
ang = random(360)
repeat(other.dmg){
//instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
//instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
//instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
instance_create(x+lengthdir_x(14,ang+random_range(0,240)),y+lengthdir_y(14,ang+random_range(0,240)),MeatExplosion)
}}


if sprite_index != spr_hurt
{
snd_play(snd_hurt, hurt_pitch_variation)
//sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
Sleep(other.sleepRate+size*10)
BackCont.shake += 5
}
}}
hit=true;
}

