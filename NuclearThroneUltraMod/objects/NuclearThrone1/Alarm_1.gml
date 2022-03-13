/// @description AI
alarm[1] = aTime+random(10);
var beamL = x - 20;
var beamR = x + 20;
scrTarget();

if target > 0
{
	var ran = random(100);
	badboyBuff = 1;
	if target.x < x - 128 || target.x > x + 128 && ran > 50
	{
		fireTriShot = false;
		badboyBuff = 0.5; //Player is a bad boy double the firerate
		aTime *=0.5;
		event_user(2);
	}
	if target.y < y && ran > 50
	{
		//Above me
		walk = alarm[1];
		walkDir = -1.5;
		fireTriShot = false;
		bigballs = false;
	}
	else if target.y - y > 148 && ran > 70
	{
		//Far below me
		walk = alarm[1];
		walkDir = 1;
		fireTriShot = false;
		bigballs = false;
	}
	else if target.x > beamL && target.x < beamR && ran > 55
	{
		//In center
		bigballs = false;
		fireTriShot = false;
		event_user(0);//BEAM START
	}
	else if ran > 40
	{
		//Tri shot
		bigballs = false;
		event_user(1);
	}
	else
	{
		fireTriShot = false;
		event_user(2);
	}
}