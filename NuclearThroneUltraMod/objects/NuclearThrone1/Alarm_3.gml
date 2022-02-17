/// @description intro step 3

snd_play(sndNothingRise);
image_speed = 0.4;
snd_play(sndNothingBeamEnd);
audio_stop_sound(sndNothingBeamLoop);
with ThroneBeam
	instance_destroy();
with ThroneFlame
{
	sprite_index = sprThroneFlameStart;
	image_index = 0;
	visible = true;
}
meleedamage = 10;
intro = false;