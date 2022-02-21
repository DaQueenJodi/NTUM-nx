/// @description Big balls
bigballs = true;
with NuclearThrone1Side
{
	if isLeft
		alarm[2] = firerate * 6;
	else
		alarm[2] = firerate * 3;
}
alarm[1] += 20;	
