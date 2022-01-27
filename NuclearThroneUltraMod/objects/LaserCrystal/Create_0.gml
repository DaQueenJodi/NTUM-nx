raddrop = 22
maxhealth = 45
meleedamage = 20
size = 2


event_inherited()

spr_idle = sprLaserCrystalIdle
spr_walk = sprLaserCrystalIdle
spr_hurt = sprLaserCrystalHurt
spr_dead = sprLaserCrystalDead
spr_fire = sprLaserCrystalFire


snd_hurt = sndLaserCrystalHit
snd_dead = sndLaserCrystalDeath

replace=false;
if instance_exists(Player)
{
if random(40) < 1//random 30
{
replace=true;
instance_destroy()
instance_create(x,y,LightningCrystal)
}
}

//behavior
ammo = 4
gunangle = random(360)
alarm[1] = 30+random(90)

