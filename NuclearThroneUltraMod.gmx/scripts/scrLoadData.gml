//races starting weps & unlocked
cgot[0] = 1


var dir; dir = 1
repeat(racemax){
cwep[dir] = ini_read_real("DATA","cwep"+string(dir),race_swep[dir]);
cgot[dir] = ini_read_real("DATA","cgot"+string(dir),race_have[dir]);
bskin[dir] = ini_read_real("DATA","bskin"+string(dir),race_bskin[dir]);
cskin[dir] = ini_read_real("DATA","cskin"+string(dir),race_cskin[dir]);
skin[dir] = ini_read_real("DATA","skin"+string(dir),0);

dir += 1;}

dir=0;
repeat (maxgamemode)
{
gamemode_have[dir] = ini_read_real("DATA","gamemode_have"+string(dir),gamemode_have[dir]);
dir++;
}

protowep = ini_read_real("DATA","protowep",56);
protowepmod1 = ini_read_real("DATA","protowepmod1",0);
protowepmod2 = ini_read_real("DATA","protowepmod2",0);
protowepmod3 = ini_read_real("DATA","protowepmod3",0);

var racedir=0;

repeat(racemax)
{
dir=0;
repeat(maxstartwep)
{
start_wep_have[dir,racedir] = ini_read_real("DATA","start_wep_have"+string(dir)+string(racedir),start_wep_have[dir,racedir]);
dir++;
}
racedir++;
}
