/// @description Slow down
alarm[1] += 20;
rotationSpeed /= speedUp;
if audio_is_playing(sndDragonLoop)
audio_stop_sound(sndDragonLoop);

event_user(2);
