raddrop = 22
maxhealth = 160
meleedamage = 6;
size = 4;

event_inherited()
actTime = 10;
maxSpeed = 2;
maxJumpSpeed = 8.1;
jumpAcc = 0.4;
spr_normal = sprDogGuardianWalk;
spr_idle = sprDogGuardianWalk
spr_walk = sprDogGuardianWalk
spr_hurt = sprDogGuardianHurt
spr_dead = sprDogGuardianDead
spr_fire = sprDogGuardianCharge;
spr_jump_up = sprDogGuardianJumpUp;
spr_jump_down = sprDogGuardianJumpDown;
//These are to stop iframes during jump
spr_chrg = spr_jump_up;
fire = false;
charge = false;
jumpUp = false;
jumpDown = false;
jumpDir = 0;
//behavior
walk = 1
alarm[1] = 30+random(90)
friction = 1;
snd_hurt = sndDogGuardianHurt;
snd_dead = sndDogGuardianDead;
snd_melee = sndDogGuardianMelee;
justjumped = false;
instance_create(x,y,BigWallBreak);