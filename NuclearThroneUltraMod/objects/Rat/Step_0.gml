event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if instance_exists(Player)
{
    if Player.loops>0
    {
    if speed > 5
    speed = 5
    }
    else
    {
    if speed > 4
    speed = 4
    }
}
else
{
if speed > 4
speed = 4
}

