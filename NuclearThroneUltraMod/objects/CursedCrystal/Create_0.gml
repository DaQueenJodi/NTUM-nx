raddrop = 22
maxhealth = 45
meleedamage = 20
size = 2


event_inherited()

spr_idle = sprInvLaserCrystalIdle;
spr_walk = sprInvLaserCrystalIdle;
spr_hurt = sprInvLaserCrystalHurt;
spr_dead = sprInvLaserCrystalDead;
spr_fire = sprInvLaserCrystalFire;


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

