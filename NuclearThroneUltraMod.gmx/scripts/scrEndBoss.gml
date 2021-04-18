//
if instance_exists(Player)
{
with UberCont
{
//in seconds
var besttime = time_seconds+(time_minutes*60)+(time_hours*3600);
var bestofall = true
var dir= 1;

repeat(racemax)
{
if besttime > cbst_time[dir]
bestofall=false;
dir++;
}
    if bestofall
    {
    
    cbst_time[Player.race]= besttime;
    
    with instance_create(x,y,UnlockPopup)
    {
    mytext="BEST TIME YET!!!"+other.race_name[Player.race]+"#"+other.txttime
    }
    
    scrSave();
    }
    else if besttime < cbst_time[Player.race]
    {
    
    cbst_time[Player.race]= besttime;
    
    with instance_create(x,y,UnlockPopup)
    {
    mytext="BEST TIME FOR"+other.race_name[Player.race]+"#"+other.txttime
    }
    
    scrSave();
    }

}
}
