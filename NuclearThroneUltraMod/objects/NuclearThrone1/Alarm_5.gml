/// @description START BEAM
alarm[6] = 90;//Beam duration
snd_play(sndNothingBeamStart);
snd_loop(sndNothingBeamLoop);
with instance_create(x,y+32,ThroneBeam)
{
	depth = other.depth - 1;
	team = other.team;
}
