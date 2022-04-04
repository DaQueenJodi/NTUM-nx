/// @description CHARGE
direction = chargeDirection;
motion_add(chargeDirection,startSpeed);
speed = startSpeed;
alarm[1] = chargeDuration;
walk = chargeDuration-10;
snd_play(sndJungleAssassinAttack);
