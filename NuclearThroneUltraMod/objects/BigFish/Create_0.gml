raddrop = 64
maxhealth = 115
meleedamage = 3
size = 3


event_inherited();

if instance_exists(Player){
my_health=round( (1+(Player.loops*0.3))*my_health )//bandit loop 1: 1.1*4= 5(rounded up)
maxhealth=my_health;
}

spr_idle = sprOasisBossIdle
spr_walk = sprOasisBossWalk
spr_hurt = sprOasisBossHurt
spr_dead = sprOasisBossDead
spr_fire = sprOasisBossFire


snd_dead = sndOasisBossDead;
snd_hurt = sndOasisBossHurt;
snd_fire = sndOasisBossFire;
snd_mele = sndOasisBossMelee;

walk=0;
//behavior
alarm[1] = 30+random(50)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),3)

intro=1;
suckstrength=0;
maxspeed=4

snd_play(sndOasisBossIntro);    


cam=true

with BigFish
{
if id!=other.id
other.cam=false;
}

if cam
instance_create(x,y,DramaCamera);

friction = 0.8;

