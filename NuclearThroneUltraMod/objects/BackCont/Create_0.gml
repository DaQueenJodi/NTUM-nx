viewx = 0
viewy = 0
viewx2 = 0
viewy2 = 0
prevviewx2 = 0
prevviewy2 = 0
smoothing = 0.2;

shake = 0
kills = 0
enemiesInStartLevel=0;
//maxEnemyHealthInLevel=0;
totalEnemyHealth=0;
hard = 0
area = 0
subarea = 0

shad = noone;//surface_create(view_wview,view_hview)


alarm[0] = 1
alarm[1] = 120

wantVanAmount = 0;
vanDelay = 330;
vanDelayRandom = 100;
verticalVans = false;

///@description deside how manny vans
if instance_exists(Player)
{
	wantVanAmount = GetPlayerLoops();
	vanDelay = max(60,vanDelay - ((wantVanAmount-1)*70));
	if wantVanAmount > 2
		verticalVans = true;
	if Player.crown == 16 //CROWN OF POPO
		wantVanAmount ++;
	if Player.crown==10//crown of difficulty
	{
		vanDelay*=0.7;
		verticalVans = true;
	}
	if Player.ultra_got[82]
	{
		alarm[3]=60;
	//maxEnemyHealthInLevel=0;
	}
	//progression
	alarm[4]=600;//10 seconds
}