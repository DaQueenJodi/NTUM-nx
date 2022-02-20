
function snd_play_2d(sndId, randompitch = 0, cancelPrev = false, usesLocation = true, priority = 2) {
	audio_sound_pitch(audio_play_sound(sndId,2,false), 1 + (random(randompitch)*2 - randompitch));
}
