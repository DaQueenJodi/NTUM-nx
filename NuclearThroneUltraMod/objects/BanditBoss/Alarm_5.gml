
spr_idle = sprBanditBossIdle
spr_walk = sprBanditBossWalk
spr_hurt = sprBanditBossHurt
spr_dead = sprBanditBossDead
spr_fire = sprBanditBossFire
charge = 0

alarm[1] = 10+random(30)

if intro = 0
{
if !instance_exists(BanditBoss)
instance_create(x,y,DramaCamera)

with BanditBoss
intro=1;

intro = 1
if instance_exists(Player)
{
if Player.loops>0
alarm[1]=10;
else
alarm[1] = 60;
}
else
alarm[1] = 60
}

