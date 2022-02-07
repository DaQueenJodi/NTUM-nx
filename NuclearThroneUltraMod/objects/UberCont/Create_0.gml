//VERSION STUFF ETC.
win8 = 1;
version = 000//23 is final probably
public = 0//1 is no cheats and release
//if file_exists("icheat.txt") or file_exists("ICHEAT.txt") or file_exists("ICHEAT.TXT") or file_exists("icheat.TXT")
//public = 0

//DEBUG STUFF
scrn = 0
scrn_take = 0

everything=69;
unlocked=69;

//DEFAULT STUFF
race = 0
paused = 0
alarm[0] = 30
	//Init variable that we load
tot_time = 0;
scrInit();
opt_gamepad=0;//for interaction sprites

with KeyCont
instance_destroy()
instance_create(x,y,KeyCont)

//this is for the menu
area=1;
subarea=1;
loops=0;

window_set_fullscreen(UberCont.opt_fulscrn)

window_set_min_height(480);
window_set_min_width(640);

window_set_max_height(1440);
window_set_max_width(1920);

time_microseconds=0;
microseconds=""//string for microseconds
time_seconds=0;
secondsstring="";
time_minutes=0;
minutesstring="";
time_hours=0;
txttime="00:00:00:00";

lastwishused=false;
kills=0;

useSeed = false;
seed = 0;
seedText = "";
firstFloorMaker = true;
seedOffset = 0;