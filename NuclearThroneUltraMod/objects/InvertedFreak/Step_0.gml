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


if target > 0
{
if instance_exists(target)
mp_potential_step(target.x,target.y,0.4,0)
}


if instance_exists(Player)
{
    if Player.loops>0
    {
    if speed > 5.2
    speed = 5.2
    }
    else
    {
    if speed > 4.2
    speed = 4.2
    }
}
else
{
if speed > 4.2
speed = 4.2
}

//I'm hurt I will bite now
if instance_exists(Player) && sprite_index = spr_hurt
motion_add(point_direction(x,y,Player.x,Player.y),1);

