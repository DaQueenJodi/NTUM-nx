event_inherited();
friction = 0.8

wallbounce = 0
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
wallbounce = 8

if Player.race=25
{
wallbounce = 9;

if Player.ultra_got[97]
wallbounce+=5;
}



}
}

typ = 1 

