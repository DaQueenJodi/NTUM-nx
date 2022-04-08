image_index = 0

size = 3
maxhealth = 40
target = -1
spr_idle = sprScrapBossSleep
spr_hurt = sprScrapBossSleepHurt
spr_dead = sprScrapBossDead

event_inherited()

image_speed = 0.4


scrBossFloor();
instance_create(x,y,BigWallBreak);
timer = 0



