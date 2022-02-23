/// @description START BEAM
alarm[6] = 70;//Beam duration
snd_play_2d(sndNothingBeamStart);
snd_loop(sndNothingBeamLoop);
vspeed = 0;
beamY = y;
with instance_create(x,y+20,ThroneBeam)
{
	depth = other.depth - 1;
	team = other.team;
}
