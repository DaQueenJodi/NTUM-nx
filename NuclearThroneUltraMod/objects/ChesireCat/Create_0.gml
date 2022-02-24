raddrop = 60
maxhealth = 640
meleedamage = 4
size = 4

event_inherited()
if instance_exists(Player){
my_health=round( (1+(Player.loops*0.2))*my_health )//bandit loop 1: 1.1*4= 5(rounded up)
maxhealth=my_health;
}
spr_idle = sprChesireCatIdle
spr_walk = sprChesireCatIdle
spr_hurt = sprChesireCatHurt
spr_dead = sprChesireCatDead
spr_fire = sprChesireCatPrepLaser


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

instance_create(x,y,ChesireCatTail);

ammo=7;

dodge=0;
friction = 0.8;
/*

lasx = x
lasy = y
lasd = 0

/* */
/*  */
