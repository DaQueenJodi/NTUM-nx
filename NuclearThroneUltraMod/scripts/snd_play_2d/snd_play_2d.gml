
function snd_play_2d(sndId, randompitch = 0, cancelPrev = false, usesLocation = true, priority = 2) {
	if cancelPrev && audio_is_playing(sndId)
		audio_stop_sound(sndId);
	audio_sound_pitch(audio_play_sound(sndId,2,false), 1 + (random(randompitch)*2 - randompitch));
}
