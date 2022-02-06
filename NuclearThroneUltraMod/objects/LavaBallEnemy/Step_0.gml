event_inherited()

//if sprite_index != spr_hurt
//motion_add(direction,0.8)
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
    if speed > 2
    speed = 2
    }
    else
    {
    if speed > 1.5
    speed = 1.5
    }
}
else
{
if speed > 1.5
speed = 1.5
}


if alarm[2]>0&&target>0
{

direction = point_direction(x,y,target.xprevious,target.yprevious)
    BackCont.shake += 0.1
    if instance_exists(Player)
    {
    if Player.loops>0
    {//loopfire
        repeat(2){
        with instance_create(x/*-8*/,y,TrapFire)
            {
            sprite_index = sprFireLilHunter
        
            motion_add(other.direction+random(16)-6,3+random(4))
            image_angle = direction
            team = other.team
            }
        }
    }
    else
    {//preloopfire
        repeat(2){
        with instance_create(x/*-8*/,y,TrapFire)
            {
            sprite_index = sprFireLilHunter
        
            motion_add(other.direction+random(12)-6,2+random(3))
            image_angle = direction
            team = other.team
            }
        }

    }
    }
}



/* */
/*  */
