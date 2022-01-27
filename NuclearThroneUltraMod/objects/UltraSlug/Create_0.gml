event_inherited();
friction = 0.5//0.8

wallbounce = 4
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
wallbounce = 10
if Player.race=25
{
wallbounce = 11;

if Player.ultra_got[97]
wallbounce+=5;
}
}
}
typ = 1 

