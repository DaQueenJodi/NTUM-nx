raddrop = 0
maxhealth = 40
meleedamage = 0
size = 1
scrCrownOfPopoRad(4);

event_inherited()

spr_idle = sprEliteGruntIdle
spr_walk = sprEliteGruntWalk
spr_hurt = sprEliteGruntHurt
spr_dead = sprEliteGruntDead


snd_hurt = sndEliteGruntHurt
snd_dead = sndEliteGruntDead
snd_play(sndEliteGruntEnter)


team = 3

//behavior
walk = 0
grenades = 3
gunangle = random(360)
alarm[1] = 10+random(15)
wkick = 0
roll = 1

ammo=3;
rolltime=15+random(40);
freeze = 0
if instance_exists(Player)
{
lastx = Player.x
lasty = Player.y

direction = point_direction(x,y,target.x,target.y)+random(30)-15
gunangle=point_direction(x,y,target.x,target.y);
}
else
{
lastx = x
lasty = y
}

dodge=0;

