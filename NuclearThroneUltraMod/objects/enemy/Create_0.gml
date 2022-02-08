image_speed = 0.4
friction = 0.4
right = choose(1,-1)
my_health = maxhealth
prevhealth=my_health;


MorphMe=false;
frozen=false;

team = 1
target = -1

//if object_index!=HotDrake
//alarm[10]=1000;

snd_hurt = sndHitFlesh
snd_dead = sndEnemyDie
snd_mele = sndMaggotBite
hurt_pitch_variation = 0.15;

if instance_exists(Player)
{
if Player.skill_got[11] = 1
{
if Player.race=25
my_health = round(my_health*0.76);//scarier face
else
my_health = round(my_health*0.8);//scarier face

}
if Player.race=15{//ATOM
my_health = round(my_health*0.92);//passive
if Player.ultra_got[58]//Proton
my_health=round(my_health*0.85);//ultra
}//this all stacks ofcourse

if UberCont.opt_gamemode = 9//easy mode
{
my_health=round(my_health*0.8);
}


my_health=round( (1+(Player.loops*0.14))*my_health )//bandit loop 1: 1.1*4= 5(rounded up)

if Player.crown==10//crown of difficulty
{
my_health*=1.8;
}

maxhealth=my_health;


if Player.ultra_got[19]{//plant leacher
bloodempty=0}

if Player.crown = 13
raddrop=0;

if Player.loops >1
raddrop*=0.8;
}

wkick=false;
spr_chrg=false;
spr_fire=false;


if UberCont.opt_gamemode==5//1HP gamemode
{
my_health=1;
maxhealth=my_health
}
//List of move through wall enemies
if object_index!=HotDrake && object_index!=ChesireCat  && object_index!=InvertedHotDrake && object_index!=InvertedChesireCat && object_index != GhostGuardian
alarm[10]=500;



