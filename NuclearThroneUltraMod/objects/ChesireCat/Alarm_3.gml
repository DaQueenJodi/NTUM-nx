/// @description laserattack
mask_index=mskChesireCat;
if ammo > 0
{
ammo -= 1
alarm[3] = 9
snd_play(sndLaserUpg)
//sprite_index = spr_fire
//repeat(4){
with instance_create(x,y,EnemyLaser)
{image_angle = other.gunangle+random(10)-5;
image_yscale = 1.8;//1.25
team = other.team
event_perform(ev_alarm,0)}//}
}
else
{
drama=true;
sprite_index = spr_idle
}
scrTarget()
if target>0
{
gunangle = point_direction(x,y,target.xprevious,target.yprevious);
}
alarm[1] += 2;
