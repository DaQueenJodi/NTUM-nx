function scrEmptyRad() {
	clicked = 0
	if !audio_is_playing(sndEmpty)
	snd_play(sndUltraEmpty)
	with instance_create(x,y,PopupText)
	{mytext = "NOT ENOUGH RADS"
	colour=c_red;
	other.wkick = -2}



}
