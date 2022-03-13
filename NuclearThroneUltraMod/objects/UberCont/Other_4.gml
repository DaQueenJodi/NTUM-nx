if !instance_exists(KeyCont)
instance_create(0,0,KeyCont)
if instance_exists(Player)
{
area=Player.area;
subarea=Player.subarea;
loops=Player.loops;
}

if area=1 && subarea=1 && loops=0 || UberCont.opt_gamemode == 25 || UberCont.opt_gamemode == 8
{

lastwishused=false;

time_microseconds=0;
time_seconds=0;
time_minutes=0;
time_hours=0;

}

if !instance_exists(Cursor)
instance_create(0,0,Cursor);

firstFloorMaker = true;
seedOffset = 0;

//Cheat mode
if (opt_gamemode == 17)
	public = 0;
else
	public = defaultPublic;
	
hadBossIntro = false;