if other.team != team and other.my_health > 0 && (other.team!=2 || image_index<5/*not player or before this frame*/)
{
if other.sprite_index != other.spr_hurt or (random(30) < 1&&team==2)//the chance for extra damage only if team is player's
{
snd_play(sndBurn)

with other
{
if other.team!=2&&other.sprite_index=sprFireLilHunter//infamous blue fire
my_health-=1
else
{
my_health -= other.dmg;
sprite_index = spr_hurt
image_index = 1;
}

motion_add(other.direction,0.5)

if alarm[11]>0//frozen
{
with Player
{
if race = 24
scrUnlockBSkin(24,"FOR BURNING AN ENEMY#THAT IS FROZEN AS ELEMENTOR",0);
}
}

}
snd_play(other.snd_hurt)

if team!=2
instance_destroy();
}
x = (x+other.x)/2+random(6)-3
y = (y+other.y)/2+random(6)-3
speed *= 0.8
}