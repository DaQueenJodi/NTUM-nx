event_inherited()


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if walk > 0
{
if sprite_index != spr_hurt
motion_add(direction,0.55)
}


if instance_exists(Player)
{
    if Player.loops>0
    {
    if speed > 4.5
    speed = 4.5
    }
    else
    {
    if speed > 3.8
    speed = 3.8
    }
}
else
{
if speed > 3.8//4
speed = 3.8
}

