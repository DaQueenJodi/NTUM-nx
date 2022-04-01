if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with other
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,16)
}


//RECYCLE GLAND
if instance_exists(Player){
if Player.skill_got[16] = 1 and random(3) < 2 +Player.betterrecyclegland
{Player.ammo[1] += 3
instance_create(x,y,RecycleGland);}}


}

