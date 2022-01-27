//MAGIC REPAIR
if instance_exists(Player)
{
if Player.wep = 27|| (Player.race=7&&Player.bwep=27)||Player.wep = 230
{
instance_create(x,y,CarVenusFixed)
instance_change(Wind,false)
}
}

