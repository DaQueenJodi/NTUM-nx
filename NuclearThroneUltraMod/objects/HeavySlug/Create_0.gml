event_inherited();
friction = 1//0.8

wallbounce = 0
dmg = 70;
alarm[1] = 3;
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
wallbounce = 8
friction=0.95;
alarm[1] += 2;
if Player.race=25
{
wallbounce = 9;
}
if Player.ultra_got[97]
{
wallbounce+=5;
friction=0.9;
alarm[1]+=1;
}
}
}

typ = 1 

