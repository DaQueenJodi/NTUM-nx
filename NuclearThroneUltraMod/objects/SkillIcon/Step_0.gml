if KeyCont.key_fire[p] = 1 and (mouse_x < x+22 and mouse_y < y+22 and mouse_x > x-22 and mouse_y > y-22)
{
Player.skill_got[skill] = 1
Player.skillsChosen+=1;
Player.skillpoints -= 1

if skill = 0//heavy heart
{
//Unlock Elementor
scrUnlockCharacter(24,"FOR TAKING HEAVY HEART")
}
if skill = 1
{

if Player.race=25
{
Player.maxhealth += 5
Player.my_health += 5
}
else
{
Player.maxhealth += 4
Player.my_health += 4
}

}
else if skill = 2
{
if Player.race=25
Player.maxspeed +=0.75;
else
Player.maxspeed += 0.5

}
else if skill = 3 && Player.race=25//Plutonium hunger
{
Player.betterpluto+=10;
}
else if skill = 4 && Player.race=25//rabitpaw
{
Player.betterrabbitpaw+=0.12;
}
else if skill = 5 && Player.race=2
{
//Unlock atom
scrUnlockCharacter(15,"FOR TAKING THRONEBUTT AS CRYSTAL");

}
else if skill = 10
{
if Player.race=25
{
Player.typ_amax[1] = 255+Player.skill_got[10]*345
Player.typ_amax[2] = 55+Player.skill_got[10]*55
Player.typ_amax[3] = 55+Player.skill_got[10]*55
Player.typ_amax[4] = 55+Player.skill_got[10]*55
Player.typ_amax[5] = 55+Player.skill_got[10]*55
}
else
{
Player.typ_amax[1] = 255+Player.skill_got[10]*300
Player.typ_amax[2] = 55+Player.skill_got[10]*44
Player.typ_amax[3] = 55+Player.skill_got[10]*44
Player.typ_amax[4] = 55+Player.skill_got[10]*44
Player.typ_amax[5] = 55+Player.skill_got[10]*44
}

}
else if skill = 13 && Player.race = 25//Long arms
{
Player.bettermelee+=0.4;
if Player.ultra_got[97]
Player.bettermelee=1.1;
}
else if skill= 16 && Player.race = 25//recycle gland
{
Player.betterrecyclegland=0.14;
if Player.ultra_got[97]
Player.betterrecyclegland=0.26;

}
else if skill = 17 && Player.race = 25
{
Player.betterlaserbrain=1;

if Player.ultra_got[97]
Player.betterlaserbrain=2.1;
}
else if skill = 21//bolt marrow
{
Player.betterboltmarrow=7;
if Player.ultra_got[97]
Player.betterboltmarrow=20;
}
else if skill = 18//last wish
{
Player.ammo[1] += 200
Player.ammo[2] += 20
Player.ammo[3] += 20
Player.ammo[4] += 20
Player.ammo[5] += 20

if Player.race=25
{
Player.ammo[1] += 600
Player.ammo[2] += 60
Player.ammo[3] += 60
Player.ammo[4] += 60
Player.ammo[5] += 60
}

if Player.race==9||Player.race==12//Chicken maxhealth regain
{
if Player.maxhealth<8 || (Player.skill_got[1]==1&&Player.maxhealth<12)
{
if Player.skill_got[1]==1//rhino skin
{
Player.maxhealth=12;
}
else
Player.maxhealth=8;
}
}

Player.my_health = Player.maxhealth

if Player.ammo[1] > Player.typ_amax[1]
Player.ammo[1] = Player.typ_amax[1]

if Player.ammo[2] > Player.typ_amax[2]
Player.ammo[2] = Player.typ_amax[2]

if Player.ammo[3] > Player.typ_amax[3]
Player.ammo[3] = Player.typ_amax[3]

if Player.ammo[4] > Player.typ_amax[4]
Player.ammo[4] = Player.typ_amax[4]

if Player.ammo[5] > Player.typ_amax[5]
Player.ammo[5] = Player.typ_amax[5]

if Player.curse = 1 or Player.bcurse = 1
{
repeat(10)
instance_create(Player.x+random(16)-8,Player.y+random(16)-8,Curse)
}
Player.curse = 0
Player.bcurse = 0

if UberCont.lastwishused=false
Player.skeletonlives+=1;

}
else if skill = 5 && Player.race = 1//thronebut for fish
{
with Player//update the ammo values
scrWeapons();
}
else if skill = 5 && Player.race = 16//VIKING
{
Player.maxarmour+=1;
Player.armour+=1;//kindness here
}
else if skill = 19{

if Player.race=25
{
Player.accuracy = Player.standartAccuracy*0.2//0.3//in case you have build up rage use the standart
Player.standartAccuracy=Player.accuracy//new standart
}
else
{
Player.accuracy = Player.standartAccuracy*0.28//0.38//in case you have build up rage use the standart
Player.standartAccuracy=Player.accuracy//new standart
}


}
else if skill==25{
Player.strongspirit=true;
Player.strongspiritused=false;}
else if skill=27//patience
{


if Player.race=25
Player.skillpoints++;
else
Player.patience++;
}

if skill==13||skill==14||skill==15||skill==16||skill==17||skill==21//wep specific
{Player.heavyheart++;}

with SkillIcon
instance_destroy()

with LevCont
instance_destroy()

with UltraIcon
instance_destroy()

if Player.skillpoints > 0
{
instance_create(x,y,LevCont);
}
else
{
with instance_create(x,y,GenCont){
race = Player.race;}
}
snd_play(skill_msnd[skill])//skill_msnd no more array sorry but memory

}

