event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,2)
}

if speed > 4
speed = 4

if speed < 1 and ammo < 1
speed = 1

