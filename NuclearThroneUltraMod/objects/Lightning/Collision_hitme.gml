if other.team != team and other.my_health > 0 && other.team!=2
{
with other
{if sprite_index != spr_hurt || random(35)<1
{
if instance_exists(Player)
{
if Player.race=24//Elementor's passive
my_health -= other.dmg+2;
else
my_health -= other.dmg
}
sprite_index = spr_hurt
image_index = 0
motion_add(other.image_angle,4)}
}
snd_play(other.snd_hurt)
instance_create(x,y,Smoke)}
else if other.team=2 && other.my_health > 0 && other.team!= team
{//Player damage
with other
{if sprite_index != spr_hurt
{
my_health -= 2
sprite_index = spr_hurt
image_index = 0
motion_add(other.image_angle,4)}
}
Sleep(10);
snd_play(other.snd_hurt)
instance_create(x,y,Smoke)
}

