/// @description xxxInit

// Inherit the parent event
event_inherited();

raddrop = 4
maxhealth = 24
my_health = maxhealth;
EnemyHealthAdjustments();

spr_idle = sprInvertedFireWormIdle
spr_walk = sprInvertedFireWormIdle
spr_hurt = sprInvertedFireWormHurt
spr_dead = sprInvertedFireWormDead
spr_fire = sprInvertedFireWormFire;

actTime = 9;
maxSpeed = 2.4;
acc = 0.8;
tellTime = 25;
laserDuration = 65;
laserOffsetMax = 40;
maxRange = 240;
maxRange += min(GetPlayerLoops()*20,400);
isInverted = true;
