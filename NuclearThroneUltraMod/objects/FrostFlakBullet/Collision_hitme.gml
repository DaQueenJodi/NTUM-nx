if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
Sleep(50)
with other
{
my_health -= 6
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,6)
}
with instance_create(x,y,BulletHit)
	sprite_index = sprFreezeFlakHit;
//RECYCLE GLAND
if instance_exists(Player){
if Player.skill_got[16] = 1 and random(3) < 1.2 + Player.betterrecyclegland
{Player.ammo[1] += 10
instance_create(x,y,RecycleGland);}}

}

