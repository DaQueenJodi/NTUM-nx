event_inherited()


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if walk > 0
{
if sprite_index != spr_hurt
motion_add(direction,0.6)
}


if instance_exists(Player)
{
    if Player.loops>0
    {
    if speed > 3.4
    speed = 3.4
    }
    else
    {
    if speed > 3.2
    speed = 3.2
    }
}
else
{
if speed > 3.2
speed = 3.2
}

if target > 0
{
if instance_exists(target)
mp_potential_step(target.x,target.y,1,0)
}

