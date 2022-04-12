raddrop = 60
maxhealth = 660
meleedamage = 3
size = 4

event_inherited()
alarm[10] = 0;

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
myWazer = -1;
wazerDuration = 105;
wazerRotation = 0;
wazerDirection = 0;
wazerOffset = 120;
tellTime = 18;
/*

lasx = x
lasy = y
lasd = 0

/* */
/*  */
