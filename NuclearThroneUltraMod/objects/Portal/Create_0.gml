image_speed = 0.4

endgame = 100

snd_play_2d(sndPortalOpen)
snd_play(sndPortalAppear)
snd_loop(sndPortalLoop)


var chance = 1;


if instance_exists(Player)
{
if Player.race=22//Rogue
{
repeat(1+irandom(3))
instance_create(x,y,IDPDSpawn);
}

if Player.race=15//atom extra chance for invertedness and bosses ofcourse aswell
chance=2;

with projectile
{
if team != Player.team
instance_destroy()
}
currentarea=Player.area;
currentsubarea=Player.subarea;

}
else
{
currentarea=BackCont.area;
currentsubarea=BackCont.subarea;
}

type=1;

instance_create(x,y,PortalShock);

inverted=false;//is this an inverted portal?

instance_create(x,y,WallBreak)
instance_create(x+16,y+16,WallBreak)
instance_create(x-16,y-16,WallBreak)

instance_create(x-16,y+16,WallBreak)
instance_create(x+16,y-16,WallBreak)


if ( (currentarea=105 || currentarea=106|| currentarea=107 || currentarea = 108 || currentarea = 109 || currentarea = 112) && currentsubarea < 2 && random(5) < chance )//inverted bosses
{
inverted=true;
if instance_exists(Player)
{
Player.inverted=true;
}
with Corpse
canspawnportal=false;
}

pullstrength=2;

