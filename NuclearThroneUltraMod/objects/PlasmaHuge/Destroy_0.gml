
if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndPlasmaBigExplodeUpg)
else
snd_play(sndPlasmaBigExplode)
}
ang = random(360)
repeat(4)
{
with instance_create(xprevious,yprevious,PlasmaBig)
{motion_add(other.ang,2)
scrCanHumphry();
image_angle = direction
originalDirection=other.ang;
team = other.team}
ang += 360/10
}

instance_create(x,y,PlasmaImpact)

