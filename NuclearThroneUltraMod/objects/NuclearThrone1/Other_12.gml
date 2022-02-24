/// @description Big balls
bigballs = true;
with NuclearThrone1Side
{
	if isLeft
		alarm[2] = firerate * 9;
	else
		alarm[2] = firerate * 5;
}
alarm[1] += 20;	
