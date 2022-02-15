event_inherited()

motion_add(direction,0.8)

if sprite_index == spr_walk && !run
	sprite_index = spr_idle;
	

if speed > 3.5-run
speed = 3
else if speed < 0.6
speed = 0.6;


if hspeed > 0
right = 1
else if hspeed < 0
right = -1