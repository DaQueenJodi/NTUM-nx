
if speed = 0
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1


if sprite_index != spr_hurt
motion_add(direction,0.6)


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

speed = 3

if instance_exists(enemy)
{
if close = 0 and point_distance(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y) < 64
{
close = 1
snd_play(sndFrogClose)
}
}

if my_health<1
instance_destroy();

