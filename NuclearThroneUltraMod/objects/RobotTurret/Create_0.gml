maxhealth = 40
my_health = maxhealth
meleedamage = 0
size = 1
scrWeapons();

hurt_pitch_variation = 0.1;

raddrop=28;

snd_hurt = sndHitMetal

//behavior
walk = 0
gunangle = random(360)
//alarm[0] = 20
wkick = 0

friction = 0.4

right = choose(1,-1)

team = 2

//scrWeapons();

spr_idle = sprRobotTurret
spr_hurt = sprRobotTurret
spr_dead = sprScorchmark

wep=0;
reload=0;
wepammo = 0;
wepcost=0;

ammo[1] = typ_ammo[1]*2
ammo[2] = typ_ammo[2]*2
ammo[3] = typ_ammo[3]*2
ammo[4] = typ_ammo[4]*2
ammo[5] = typ_ammo[5]*2

rad=0;

if instance_exists(Player)
{
accuracy = Player.accuracy


friction = 0.45
image_speed = 0.4

//scrRaces()
//scrSkills()
//scrUltras()
scrWeapons()
//scrCrowns()

race=Player.race;



wep = Player.wep
bwep = Player.bwep
//curse = 0
//bcurse = 0
reload = 0//Player.reload
breload = 0//Player.breload
team = Player.team
size = Player.size


accuracy = Player.accuracy

bettermelee=0;
betterlaserbrain=0;


//default shit
clicked = 0
//if wep_type[wep] = 0 or wep = 24 or wep = 36
//wepangle = choose(120,-120)
//else 
wepangle = Player.wepangle
wepflip = Player.wepflip
angle = Player.angle
wkick = 0
bwkick = 0
bwepangle = Player.bwepangle
bwepflip = Player.bwepflip
raddrop=4;
rad = 0
can_shoot = 1
bcan_shoot = 1//Player.bcan_shoot
right = 1
wepright = 1
}
else
instance_destroy();

