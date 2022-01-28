spr_idle = sprScrapBossIdle

if random(3) < 1
{
//SPIN ATTACK
alarm[1] = 15
snd_play(sndBigDogSpin)
ammo = 10+10*(1-(my_health/maxhealth))

if instance_exists(Player)
    {
    if Player.loops>0
    ammo+=10
    }

turn = choose(1,-1)
walk = 0
image_index = 0
spr_idle = sprScrapBossCharge
sprite_index = spr_idle
speed = 0
}
else
{
ammo = 0
if random(3+instance_number(ScrapBossMissile)/2) < 1 and instance_exists(Player)
{
snd_play(sndBigDogMissile)
repeat(3)
{
with instance_create(x,y,ScrapBossMissile)
motion_add(random(360),2)
}
    if instance_exists(Player)
    {
    if Player.loops>0
    {//fire an extra missile on loop
    with instance_create(x,y,ScrapBossMissile)
    motion_add(random(360),2)
    }
    }

alarm[0] = 10
}
else
{
ammo = 0
walk = 20+random(10)
if instance_exists(Player)
    {
    if Player.loops>0
    walk=10+random(10);
    }
motion_add(random(360),1)
alarm[0] = walk+10
}
}



