/// @description Init

// Inherit the parent event
event_inherited();
team = 1;
alarm[0] = max(1,VanFan.warnTime);
image_speed = min(0.4*VanFan.closeTimeMultiply,4);
snd_play(sndVanWarning);
col1 = make_colour_rgb(17,75,172);
col2 = make_colour_rgb(0,255,255);
alpha = 0;
isSlow = false;
alarm[2]  = 1;
typ = 3;