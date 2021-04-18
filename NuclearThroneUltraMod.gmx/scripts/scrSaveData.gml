var dir; dir = 1
repeat(racemax){
ini_write_real("DATA","cwep"+string(dir),cwep[dir]);
ini_write_real("DATA","cgot"+string(dir),cgot[dir]);
ini_write_real("DATA","bskin"+string(dir),bskin[dir]);
ini_write_real("DATA","cskin"+string(dir),cskin[dir]);
ini_write_real("DATA","skin"+string(dir),skin[dir]);
dir += 1;}

dir=0;
repeat (maxgamemode)
{
ini_write_real("DATA","gamemode_have"+string(dir),gamemode_have[dir]);
dir++;
}

ini_write_real("DATA","protowep",protowep);
ini_write_real("DATA","protowepmod1",protowepmod1);
ini_write_real("DATA","protowepmod2",protowepmod2);
ini_write_real("DATA","protowepmod3",protowepmod3);

var racedir=0;
repeat(racemax)
{
dir=0;
repeat(maxstartwep)
{
ini_write_real("DATA","start_wep_have"+string(dir)+string(racedir),start_wep_have[dir,racedir]);
dir++;
}
racedir++;
}

/*
//races starting weps & unlocked
cgot[0] = 1


var dir; dir = 1
repeat(racemax){
cwep[dir] = ini_read_real("DATA","cwep",race_swep[dir]);
cgot[dir] = ini_read_real("DATA","cgot",race_have[dir]);
dir += 1;}

protowep = ini_read_real("DATA","protowep",56);
