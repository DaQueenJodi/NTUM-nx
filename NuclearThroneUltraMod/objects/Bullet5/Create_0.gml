event_inherited();
friction = 0.6

wallbounce = 5
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
wallbounce = 14

if Player.race=25
{
wallbounce = 15;

if Player.ultra_got[97]
wallbounce+=5;
}
}

}

typ = 1

alarm[11] = 1;