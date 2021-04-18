//if UberCont.win8 = 1
audio_stop_sound(argument0);
//if !(audio_is_playing(argument0) )//don't play that shit multiple times (memory leaks)
audio_play_sound(argument0,1,true);
//sleep(1);//this may just fix all the audio issues though I doubt it. optimise
