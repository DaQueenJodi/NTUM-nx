if burnafter && instance_exists(Player)
{//FLAMETHROWER


if !instance_exists(FlameSound)
instance_create(x,y,FlameSound)
with instance_create(x,y,FlameBurst)
{
creator = Player.id
ammo = 9
time = 1
team = other.team
event_perform(ev_alarm,0) 
}

}

