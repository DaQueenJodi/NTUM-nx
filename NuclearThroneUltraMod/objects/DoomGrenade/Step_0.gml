if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}


if speed = 0
{sprite_index = spr_idle}
else
{sprite_index = spr_walk}

if right
image_xscale=1;
else
image_xscale=-1;

if speed>4.5
speed=4.5;