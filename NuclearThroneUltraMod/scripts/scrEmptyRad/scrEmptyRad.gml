function scrEmptyRad() {
	if !audio_is_playing(sndEmpty)
	snd_play(sndUltraEmpty)
	with instance_create(x,y,PopupText)
	{mytext = "NOT ENOUGH RADS"
	theColour=c_red;
	}
}
