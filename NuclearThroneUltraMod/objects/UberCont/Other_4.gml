if !instance_exists(KeyCont)
instance_create(0,0,KeyCont)
if instance_exists(Player)
{
area=Player.area;
subarea=Player.subarea;
loops=Player.loops;
}

if area=1 && subarea=1 && loops=0
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