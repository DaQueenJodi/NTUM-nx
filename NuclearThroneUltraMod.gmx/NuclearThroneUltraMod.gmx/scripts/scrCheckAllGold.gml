with UberCont
{


var racedir=1;

repeat(racemax)
{

var wepdir=1;

var gotthisone=0;

repeat(maxstartwep)
{
if start_wep_have[wepdir,racedir]=1
gotthisone++;

}

racedir++;

if gotthisone>=maxstartwep
return true

}

return false

}
