
function snd_play(sndId, randompitch = 0, cancelPrev = false, usesLocation = true, priority = 2) {
	//SS_Init();
	if UberCont.opt_3d_audio == 0
	{
		if sndId==sndHitWall||sndId==sndShotgunHitWall{
			if !sound_isplaying(sndId){
			audio_sound_pitch(sndId,random_range(0.8,1.2))
			audio_play_sound(sndId,100,0)}
		}

		if UberCont.win8 = 1 || cancelPrev
		audio_stop_sound(sndId);
		//audio_falloff_set_model(audio_falloff_linear_distance);

		if instance_exists(Player) && usesLocation {
			audio_sound_pitch(audio_play_sound_at(sndId,Player.x - x,Player.y - y,0,0,360,1,false,2), 1 + (random(randompitch)*2 - randompitch));
		} else {
			audio_sound_pitch(audio_play_sound(sndId,2,false), 1 + (random(randompitch)*2 - randompitch));
		}
	}
	else
	{
		with instance_create(x,y,Sound)
		{
			var playSound = true;
			var nearest = instance_nearest_notme(x,y,Sound)
			if instance_exists(nearest) && point_distance(x,y,nearest.x,nearest.y) < 32
			{
				if nearest.mySound == sndId
				{
					audio_stop_sound(sndId);
					if nearest.alarm[0] > 10
					{
						playSound = false;
						instance_destroy();
					}
				}
			}
			if playSound
			{
				depth = other.depth;
				mySound = sndId;
				emitter = audio_emitter_create();
				audio_emitter_falloff(emitter, 100, 300, 1);
				audio_emitter_position(emitter,x,y,depth);
				audio_play_sound_on(emitter,sndId,false,priority);
				alarm[0] = room_speed * audio_sound_length(sndId);
			}
		}
	}
}
