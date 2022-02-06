friction = 0.4
image_speed = 0


team = 0
size = 2

maxhealth = 4
event_inherited();
raddrop=25;

if instance_exists(Player)
{

if Player.RadMony
{
spr_idle = sprRadChestMony
spr_hurt = sprMoneyPileHurt
spr_dead = sprMoneyPileDead

snd_hurt = sndHitPlant
}
else{
spr_idle = sprRadChest
spr_hurt = sprRadChestHurt
spr_dead = sprRadChestCorpse

snd_hurt = sndHitMetal
}

hurt_pitch_variation = 0;


my_health = maxhealth

if Player.race=4 && Player.my_health <= Player.maxhealth/2 and random(2) < 1//melting
{
instance_destroy()
instance_create(x,y,HealthChest)
}
else if Player.race!=4 && Player.my_health < round(8/2) and random(2) < 1 || ( Player.race=12 && random(4)<1 )
{
instance_destroy()
instance_create(x,y,HealthChest)
}


if instance_nearest(x-16,y-16,Floor).styleb = 1 and ( Player.area = 1 and Player.area = 105 ) and random(3) < 1
instance_change(RadMaggotChest,true)
}


