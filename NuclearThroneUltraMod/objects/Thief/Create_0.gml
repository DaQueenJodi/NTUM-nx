raddrop = 6
maxhealth = 6
meleedamage = 0
size = 1

event_inherited()

spr_idle = sprThiefIdle
spr_walk = sprThiefWalk
spr_hurt = sprThiefHurt
spr_dead = sprThiefDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(40)
wkick = 0

alpha=0.1;

//stolen weapon data
wep=0;
wepmod1=0;
wepmod2=0;
wepmod3=0;
curse=0;


dodge=0;
stolen=0;

//0 = melee 1 = bullets 2 = shells 3 = bolts 4 = explosives 5 = energy
typ_ammo[0] = 333 typ_ammo[1] = 32 typ_ammo[2] = 8 typ_ammo[3] = 8 typ_ammo[4] = 6 typ_ammo[5] = 10

