friction = 0.45
image_speed = 0.4

raddrop = 10
meleedamage = 0

HumphryTB=0;
HumphryTBcount=0;
HumphrySkill=0;
HumphryShotCount=0;

oldmox=mouse_x;
oldmoy=mouse_y;

hardshell=true;
p=0;
//scrRaces()
//scrSkills()
//scrUltras()
scrWeapons()
//scrCrowns()
if instance_exists(Player)
{
race=Player.race;

bettermelee=Player.bettermelee;
betterlaserbrain=Player.betterlaserbrain;
betterpluto=Player.betterpluto;
betterrabbitpaw=Player.betterrabbitpaw;
betterboltmarrow=Player.betterboltmarrow;

//sprites
spr_idle = Player.spr_idle
spr_walk = Player.spr_walk
spr_hurt = Player.spr_hurt
spr_dead = Player.spr_dead


//sounds
snd_hurt=Player.snd_hurt;
snd_dead=Player.snd_dead;
snd_wrld=Player.snd_wrld;


wep = Player.wep
bwep = Player.bwep
//curse = 0
//bcurse = 0
reload = 0//Player.reload
breload = 0//Player.breload
team = 3//Player.team
size = 2;


accuracy = Player.accuracy


ammo[0] = Player.ammo[0]
ammo[1] = Player.ammo[1]
ammo[2] = Player.ammo[2]
ammo[3] = Player.ammo[3]
ammo[4] = Player.ammo[4]
ammo[5] = Player.ammo[5]



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
//nochest = Player.nochest

//bleed = 0
//decay = 600
//crownrad = 0
//crownvisits = 0
rad = 0
can_shoot = 1
bcan_shoot = 1//Player.bcan_shoot
right = 1
wepright = 1
back = 1
wave = 0
//roll = 0
//drawempty = 0
//drawlowhp = 0
//canrebel = 1
triggerfinger=Player.triggerfinger;//0;
strongspirit=Player.strongspirit;//false
strongspiritused=Player.strongspiritused;//false

maxhealth = floor(8*1.5*Player.level);
if Player.skill_got[1]//rhino skin
maxhealth=floor(9*1.5*Player.level);

my_health = maxhealth
lsthealth = maxhealth//lasthealth

if Player.skill_got[14]{
skill_got[14] = 1}
else{
skill_got[14] = 0}//boiling veins

returntoplayer=0;
returntoplayerfast=0;
}
else
instance_destroy();

target=-1;
walk = 0
gunangle = random(360)
alarm[5] = 10+random(40)

instance_create(x,y,WallBreak);
instance_create(x+16,y+16,WallBreak);
instance_create(x+16,y-16,WallBreak);
instance_create(x-16,y+16,WallBreak);
instance_create(x-16,y-16,WallBreak);

with instance_create(x,y,DramaCamera)
name="YOU?"
with Drama
name="YOU?"


//enemy
MorphMe=false;
frozen=false;
prevhealth=my_health;

