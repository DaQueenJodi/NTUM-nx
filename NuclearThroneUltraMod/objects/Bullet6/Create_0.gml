event_inherited();
friction = 0.6

wallbounce = 0
alarm[1]=2;
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
wallbounce = 6
alarm[1]=3;

if Player.race=25
{
wallbounce = 7;

if Player.ultra_got[97]
{
wallbounce+=5;
alarm[1]=4;
}
}
}
}
dmg=3;

typ = 1

