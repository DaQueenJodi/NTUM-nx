raddrop = 10
maxhealth = 50
meleedamage = 0
size = 2

event_inherited()

spr_idle = sprSnowTankIdle
spr_walk = sprSnowTankWalk
spr_hurt = sprSnowTankHurt
spr_dead = sprSnowTankDead

snd_hurt = sndSnowTankHurt
snd_dead = sndSnowTankPreExplo


//behavior
alarm[1] = 30+random(10)
ammo = 0
gunangle = random(360)
rest = 0
wave = 0
replace=false;
if instance_exists(Player)
{
if random(30) < 1 and Player.subarea > 1//random 30
{
replace=true;
instance_destroy()
instance_create(x,y,GoldSnowTank)
}
}

