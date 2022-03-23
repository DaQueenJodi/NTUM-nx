/// @description Start a charge (tell)
alarm[5] = 15;
alarm[1] += 16;
spr_idle = sprBigVultureChargeTell;
spr_walk = sprBigVultureChargeTell;
speed = 0;
snd_play_2d(sndBigBanditMeleeStart);
scrTarget();
if target > 0
	direction = point_direction(x,y,target.x,target.y);
chargeDirection = direction