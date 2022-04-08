image_index = 0

size = 3
maxhealth = 40
target = -1
meleedamage=0;
raddrop=0;
spr_idle = sprInvertedScrapBossSleep
spr_walk = sprInvertedScrapBossSleep
spr_hurt = sprInvertedScrapBossSleepHurt
spr_dead = sprInvertedScrapBossDead

event_inherited()

image_speed = 0.4


var dix, diy, dir;
dix = 0
diy = 0
if instance_exists(Player)
dir = instance_furthest(Player.x,Player.y,WeaponChest)
else
dir = instance_furthest(x,y,WeaponChest)

x = round(dir.x/32)*32-16
y = round(dir.y/32)*32-16


scrBossFloor();
instance_create(x,y,BigWallBreak);

timer = 0

friction=100;



