raddrop = 40
maxhealth = 80
meleedamage = 0
size = 3

if UberCont.loops>1
maxhealth=94;

event_inherited()

if instance_exists(Player){
my_health=round( (1+(Player.loops*0.2))*my_health )//bandit loop 1: 1.1*4= 5(rounded up)
maxhealth=my_health;
}

spr_idle = sprInvertedBanditBossIdle
spr_walk = sprInvertedBanditBossWalk
spr_hurt = sprInvertedBanditBossHurt
spr_dead = sprInvertedBanditBossDead
spr_fire = sprInvertedBanditBossFire


snd_hurt = sndBigBanditHit
snd_dead = sndBigBanditDie

//behavior
ammo = 10
walk = 0
shot = 0
chargewait = 2
charge = 0
gunangle = random(360)
alarm[1] = 1
intro = 0
wkick = 0

scrTarget()
if target != -1
gunangle = point_direction(x,y,target.x,target.y)

sndhalfhp = 0
sndtaunt = 0
tauntdelay = 0

oasis=false;

cam=true

with InvertedBanditBoss
{
if id!=other.id
other.cam=false;
}

if cam
instance_create(x,y,DramaCamera);

