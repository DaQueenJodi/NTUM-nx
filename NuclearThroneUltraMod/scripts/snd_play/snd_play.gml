
function snd_play(argument0, randompitch = 0, cancelPrev = false) {
	//SS_Init();
	if argument0==sndHitWall||argument0==sndShotgunHitWall{
	if !sound_isplaying(argument0){
	audio_sound_pitch(argument0,random_range(0.8,1.2))
	audio_play_sound(argument0,100,0)}
	}

	if UberCont.win8 = 1 || cancelPrev
	audio_stop_sound(argument0);


	audio_sound_pitch(audio_play_sound(argument0,2,false), 1 + (random(randompitch)*2 - randompitch));
}
