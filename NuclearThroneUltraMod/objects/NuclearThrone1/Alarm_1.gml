/// @description AI
alarm[1] = 10+random(10);
fireTriShot = false;
var beamL = x - 20;
var beamR = x + 20;
scrTarget();
if target > 0
{
	var ran = random(100);
	if target.y < y && ran > 50
	{
		//Above me
		walk = alarm[1];
		walkDir = -1.5;
	}
	else if target.y - y > 128 && ran > 80
	{
		//Far below me
		walk = alarm[1];
		walkDir = 1;
	}
	else if target.x > beamL && target.x < beamR && ran > 70
	{
		//In center
		event_user(0);//BEAM START
	}
	else
	{
		//Tri shot
		event_user(1);
	}
}