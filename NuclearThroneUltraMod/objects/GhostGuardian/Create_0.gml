raddrop = 18
maxhealth = 35
meleedamage = 4
size = 3

event_inherited()

spr_idle = sprGhostGuardianWalk;
spr_walk = sprGhostGuardianWalk;
spr_hurt = sprGhostGuardianHurt;
spr_dead = sprGhostGuardianDead;


//behavior
alarm[1] = 30+random(90)
direction = random(360);
friction = 6;
instance_create(x,y,WallBreak);
depth = -12;

xSpd = 0;
ySpd = 0;
