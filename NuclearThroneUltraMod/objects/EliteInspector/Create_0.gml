raddrop = 0
maxhealth = 38
meleedamage = 0
size = 1

event_inherited()


male=choose(true,false);

spr_idle = sprEliteInspectorIdle
spr_walk = sprEliteInspectorWalk
spr_hurt = sprEliteInspectorHurt
spr_dead = sprEliteInspectorDead


snd_hurt = sndEliteInspectorHurt
snd_dead = sndEliteInspectorDead
snd_play(sndEliteInspectorEnter);


team = 3

//behavior
walk = 0
grenades = 4
gunangle = random(360)
alarm[1] = 30+random(15)
wkick = 0
control = 0
angle = 0

freeze = 0
if instance_exists(Player)
{
lastx = Player.x
lasty = Player.y
}
else
{
lastx = x
lasty = y
}
dodgethis=0;

wepangle = choose(-140,140)
wepflip = 1
dodge=0;

