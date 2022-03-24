raddrop = 18
maxhealth = 50;
meleedamage = 5
size = 3

event_inherited()

spr_normal = sprCubeGuardianWalk;
spr_idle = spr_normal;
spr_walk = sprCubeGuardianWalk;
spr_normal_hurt = sprCubeGuardianHurt;
spr_hurt = spr_normal_hurt;
spr_dead = sprCubeGuardianDead;
spr_charge = sprCubeGuardianFire;
spr_charge_hurt = sprCubeGuardianFireHurt;
spr_fire = sprCubeGuardianFire;

snd_hurt = sndExploGuardianHurt;
snd_dead = sndExploGuardianDead;
snd_dead_charge = sndExploGuardianDeadCharge;

charge = false;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
friction = 2;
instance_create(x,y,WallBreak);
var loops = GetPlayerLoops();
projectileSpeed = 10;
projectileSpeed += min(loops,3);
amountOfProjectiles = 4;
amountOfProjectiles += min(loops*2,8);
rotateSpeed = 2+min(loops,3);
distance = 48;
distance += min(32,loops*8);
direction = random(360);
depth = -2;
fired = false;

myCompanions = [];