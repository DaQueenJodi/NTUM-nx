/// @description Update
if owner > -1 && instance_exists(owner) && !ending {
	if owner.wep != mywep
		event_perform(ev_alarm,0);
	prevangle = image_angle;
	
	image_angle = point_direction(owner.x,owner.y,mouse_x,mouse_y);
	image_angle = scrAimAssistLaser(image_angle);
	x = owner.x + lengthdir_x(offset,image_angle);
	y = owner.y + lengthdir_y(offset,image_angle);
	var hit = collision_line_point(x,y,
	x+lengthdir_x(300,image_angle),
	y+lengthdir_y(300,image_angle),
	Wall,true,true);
	BackCont.viewx2 = BackCont.viewx + lengthdir_x(camKick,image_angle+180)*UberCont.opt_shake
	BackCont.viewy2 = BackCont.viewy + lengthdir_y(camKick,image_angle+180)*UberCont.opt_shake
	BackCont.shake = max(BackCont.shake,camShake);
	owner.wkick = wkick;
	if alarm[3] < 1
	{
		if audio_is_playing(sndWazerStart)
			audio_sound_pitch(sndWazerStart,pitch);
		else if !audio_is_playing(sndWazerLoop)
			snd_loop(sndWazerLoop);
		if audio_is_playing(sndWazerLoop)
			audio_sound_pitch(sndWazerLoop,pitch);
		pitch += abs(angle_difference(image_angle,prevangle))*0.02;
		pitch = clamp(pitch - 0.1,0.96,1.8);
	}
	
	image_xscale = point_distance(x,y,hit[1],hit[2]);	
}