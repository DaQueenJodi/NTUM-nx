if UberCont.public=0
{

with UberCont
{
var dir=0;

repeat(racemax+1)
{
race_have[dir]=1
dir++;
}

var dir=0;

repeat(racemax+1)
{
race_bskin[dir]=1
dir++
}

var dir=0;

repeat(racemax+1)
{
race_cskin[dir]=1
dir++
}

var dir=0;

repeat(maxgamemode+1)
{
gamemode_have[dir]=1
dir++
}

var dir = 0;
var racedir=0;

repeat(racedir)
{
dir=1;
repeat(maxstartwep)
{
//start_wep_have[27,dir]=0
start_wep_have[dir,racedir]=1

dir++;
}
racedir++;
}


scrSave();
}


}

