event_inherited()


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if walk > 0
{
if sprite_index != spr_hurt
motion_add(direction,0.8)
}


if instance_exists(Player)
{
    if Player.loops>0
    {
    if speed > 2.6
    speed = 2.6
    }
    else
    {
    if speed > 1.9
    speed = 1.9
    }
}
else
{
if speed > 1.9
speed = 1.9
}


if target > 0
{
if instance_exists(target)
mp_potential_step(target.x,target.y,2,0)
}

