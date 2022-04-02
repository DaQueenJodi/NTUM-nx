
function snd_play_2d(sndId, randompitch = 0, cancelPrev = false, usesLocation = true, priority = 2,volume = 0.8) {
	if cancelPrev && audio_is_playing(sndId)
		audio_stop_sound(sndId);
	var sndInstance = audio_play_sound(sndId,2,false)
	audio_sound_gain(sndInstance,volume,0);
	audio_sound_pitch(sndInstance, 1 + (random(randompitch)*2 - randompitch));
}
