raddrop = 20
maxhealth = 500
meleedamage = 0
size = 1
bloodempty=0


event_inherited()

if instance_exists(Player){
my_health=round( (1+(Player.loops*0.2))*my_health )//bandit loop 1: 1.1*4= 5(rounded up)
maxhealth=my_health;
}

spr_idle = sprAssassinBossSit
spr_walk = sprAssassinBossDash
spr_hurt = sprAssassinBossHurt
spr_dead = sprAssassinBossDead
spr_stunned = sprAssassinBossStunned



snd_hurt = sndAssassinHit
snd_dead = sndAssassinDie

snd_play(sndAssassinGetUp)

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 20+random(40)
alarm[3] = alarm[1];//change sprite to normal idle
wepangle = choose(-140,140)
wepflip = 1
aggression = 0;

dodge=0;
dodgethis=-1;

MorphMe=false;
frozen=false;
prevhealth=my_health;

instance_create(x,y,WallBreak);
instance_create(x+16,y+16,WallBreak);
instance_create(x+16,y-16,WallBreak);
instance_create(x-16,y+16,WallBreak);
instance_create(x-16,y-16,WallBreak);

    repeat(8){
    with instance_create(x,y,Smoke)
    motion_add(random(360),1+random(2))}

instance_create(x,y,DramaCamera);


afterImage = ds_list_create();
afterImageMax = 10;
afterImageDelay = 4;
afterImageDuration = afterImageDelay;
alarm[7] = afterImageDelay;