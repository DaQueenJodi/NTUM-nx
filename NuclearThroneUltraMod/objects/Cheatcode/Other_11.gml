/// @description seed
seedI++;
alarm[1] = sequenceDelay;
if (seedI) >= array_length(seed)
{
	var inputSeed = get_string("LEVEL GENERATION SEED","GIVE ME YOUR SEED SENPAI");
	seedI = 0;
	UberCont.useSeed = true;
	var byteSeed = 0;
	var byteSize = string_byte_length(inputSeed);
	for (var i = 0; i < byteSize; i++) {
		byteSeed = (byteSeed + string_byte_at(inputSeed, i)) << 1;
	}
	UberCont.seed = byteSeed;
	UberCont.seedText = inputSeed;
}