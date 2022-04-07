raddrop = 150
maxhealth = 530
meleedamage = 3
size = 3

if UberCont.loops>1
maxhealth=740;

event_inherited()
if instance_exists(Player){
my_health=round( (1+(Player.loops*0.2))*my_health )//bandit loop 1: 1.1*4= 5(rounded up)
maxhealth=my_health;
}
spr_idle = sprInvertedChesireCatIdle
spr_walk = sprInvertedChesireCatIdle
spr_hurt = sprInvertedChesireCatHurt
spr_dead = sprInvertedChesireCatDead
spr_fire = sprInvertedChesireCatPrepLaser


snd_dead = sndBigBanditMeleeHit;
snd_hurt = sndBigDogHit;
snd_mele = sndRhinoFreakMelee;

walk=0;
//behavior
alarm[2] = 60+random(120);
visible=false;
//if instance_exists(Player)
//motion_add(point_direction(Player.x,Player.y,x,y),1)

mask_index=mskPickupThroughWall;

drama=false;

instance_create(x,y,InvertedChesireCatTail);

ammo=8;

dodge=0;
friction = 0.8;

myWazers = [];
wazerDuration = 100;
wazerRotation = 0;
wazerDirection = 0;
wazerOffset = 90;
tellTime = 14;
