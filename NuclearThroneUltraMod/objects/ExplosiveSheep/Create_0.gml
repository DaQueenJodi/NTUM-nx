raddrop = choose(0,0,1);
maxhealth = 4;
meleedamage = 0
size = 0

hurt_pitch_variation = 0.25;

idle=true;
spr_idle = sprSheepIdleA
spr_walk = sprSheepWalk
spr_hurt = sprSheepHurt
spr_dead = sprSheepDead


image_speed = 0.4
friction = 0.4
right = choose(1,-1)
my_health = maxhealth

if instance_exists(Player)
{
if Player.skill_got[11] = 1
my_health = round(my_health*0.8)
}


team = 0
target = -1

snd_hurt = sndHitFlesh
snd_dead = sndSheepDead
snd_mele = sndMaggotBite


snd_hurt = sndBanditHit
snd_dead = sndSheepDead

//behavior
walk = 0
alarm[1] = 30+random(90)
wkick = 0

alarm[0]=6;//b4 dez
snd_play(sndSheep);

