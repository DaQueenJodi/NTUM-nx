/// @description START BEAM
alarm[6] = 70;//Beam duration
snd_play(sndNothingBeamStart);
snd_loop(sndNothingBeamLoop);
with instance_create(x,y+20,ThroneBeam)
{
	depth = other.depth - 1;
	team = other.team;
}
