/// @description intro step 3
alarm[3] = 10;
snd_play(sndNothingBeamEnd);
audio_stop_sound(sndNothingBeamLoop);

with ThroneBeam
	instance_destroy();