/// @description START CHARGE
alarm[4] = 20;
alarm[1] += 21;
snd_play_2d(sndBigVultureCharge);
right = 1;
spr_idle = sprBigVultureCharge;
spr_walk = sprBigVultureCharge;
spr_hurt = sprBigVultureChargeHurt;
meleedamage = 20;
direction = chargeDirection;