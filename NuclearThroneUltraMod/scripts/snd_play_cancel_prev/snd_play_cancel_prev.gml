function snd_play_cancel_prev(argument0) {
	if sound_isplaying(argument0)
	audio_stop_sound(argument0);
	audio_play_sound(argument0,2,false);
}
