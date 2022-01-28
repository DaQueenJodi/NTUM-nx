event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,3)
}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1


if instance_exists(Player)
{
    if Player.loops>0
    {
    if speed > 7.6
    speed = 7.6
    }
    else
    {
    if speed > 6.3
    speed = 6.3
    }
}
else
{
if speed > 6.3
speed = 6.3
}

