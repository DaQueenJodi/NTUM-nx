if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt)
Sleep(50)
with other
{
my_health -= 6
if instance_exists(Player){
if Player.ultra_got[28]//roids ultra d
{my_health -=2;}}
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,6)
}

//RECYCLE GLAND
if instance_exists(Player){
if Player.skill_got[16] = 1 and random(3) < 1.2 + Player.betterrecyclegland
{Player.ammo[1] += 10
dir = instance_create(x,y,PopupText)
dir.mytext = "+10"
dir.alarm[1]=5;
dir.time=5;}}

}

