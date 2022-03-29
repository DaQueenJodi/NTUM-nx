event_inherited()


if bwkick > 0
bwkick -= 1
if bwkick < 0
bwkick += 1


if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

scrRoguePopo();

if speed > 3
speed = 3

if instance_exists(Player)
{
if Player.speed > 0 or my_health < maxhealth
freeze += 1
if Player.can_shoot = 0
freeze += 3
}