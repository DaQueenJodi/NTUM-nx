/// @description seed
seedI++;
alarm[1] = sequenceDelay;
if (seedI) >= array_length(seed)
{
	var inputSeed = get_string("LEVEL GENERATION SEED","0000");
	seedI = 0;
}