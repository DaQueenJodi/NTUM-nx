if instance_exists(Player)
{
if Player.race = 8
argument0 += 1
do wep = choose(40,41,42,43,44,45,280,281,283,284,285,286,287,288,290,315)
until ((wep != Player.wep and wep != Player.bwep) or Player.race = 7)
}
else
wep = choose(40,41,42,43,44,45,280,281,283,284,285,286,287,288,290,315)
