raddrop = 4

if instance_exists(Player)
{
if Player.ultra_got[37]==1//Rebel Ultra A Personal Guard
maxhealth=30;
else
maxhealth = 12;

}

meleedamage = 0
size = 1

spr_idle = sprAllyAppear
spr_walk = sprAllyWalk
spr_hurt = sprAllyHurt
spr_dead = sprAllyDead

image_speed = 0.4
friction = 0.4
right = choose(1,-1)
my_health = maxhealth

target = -1

team = 2

snd_hurt = sndBanditHit
snd_dead = sndBanditDie
snd_mele = sndMaggotBite

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 24*1.4
alarm[0] = 24*1.4//intro animation which is cool af
wkick = 0

alarm[2] = 120

name=choose(
choose("George","Bill","Jack","Henry","Good O'l Humphry","Bertha","Daniel","Willem","Bob","Weave","Issabell","Tom","Tami","Alex","Alexandra","Luther"),
choose("Susan","Mark","Hugh","Tina","Marcia","Gloria","Kelly","Becky","Tim","Ray","Stewie","Peter","Phillip","Jane","Doris","Jason"),
choose("Donna","Josh","Frank","Samuel","Sarah","Kim","Julie","Nicole","Brian","Bruce","Rebecca","Micheal","Carl","Eugene","Walter","Brenda"),
choose("Lars","Mary","Jeremy","Paul","Randy","Kevin","Martin","Jessica","Harold",/*rares*/choose("Big Tam","Chubbyemu","Kakujo","Tit","Kuntala","Bob Weaver","Jezus","God","Waifu","A dirty casual","Juul")/*rare*/,"Heather","Joe","Barbara","Cheryl","Amy","Loki")
,choose("Johan","Laura","Gertrude","Pierce","Noel","Cora","Rex","Ann","Hilary","Elisa","Jerry","Helen","Daphne","Shanon","Curt","Jeff")
,choose("Carlos","Britta","Geoff","Dom","Matt","Matthew","Anna","Smith","Lucius","Britanny","Anita","Doug","Colin","Fernando","David","Shel")
);

/* */
/*  */
