function snd_play(argument0) {
	//SS_Init();
//TODO WTF
	if argument0==sndHitWall||argument0==sndShotgunHitWall{
	if !sound_isplaying(argument0){
	audio_sound_pitch(argument0,random_range(0.8,1.2))
	audio_play_sound(argument0,100,0)}
	}

	if UberCont.win8 = 1
	audio_stop_sound(argument0);


	audio_play_sound(argument0,2,false);



}
