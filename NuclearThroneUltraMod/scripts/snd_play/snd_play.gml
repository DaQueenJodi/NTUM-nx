
function snd_play(argument0, randompitch = 0, cancelPrev = false, usesLocation = true) {
	//SS_Init();
	if argument0==sndHitWall||argument0==sndShotgunHitWall{
	if !sound_isplaying(argument0){
	audio_sound_pitch(argument0,random_range(0.8,1.2))
	audio_play_sound(argument0,100,0)}
	}

	if UberCont.win8 = 1 || cancelPrev
	audio_stop_sound(argument0);
	//audio_falloff_set_model(audio_falloff_linear_distance);

	//if instance_exists(Player) && usesLocation {
		//audio_sound_pitch(audio_play_sound_at(argument0,Player.x - x,Player.y - y,0,0,360,1,false,2), 1 + (random(randompitch)*2 - randompitch));
	//} else {
		audio_sound_pitch(audio_play_sound(argument0,2,false), 1 + (random(randompitch)*2 - randompitch));
	//}
}
