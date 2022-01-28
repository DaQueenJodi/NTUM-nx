/*if my_health <= 0
instance_destroy()

//WKICK
if variable_local_exists("wkick") = 1
{
if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1
}


//ANIMATE ME PLZ
if variable_local_exists("spr_chrg") = 1
{
if sprite_index != spr_hurt and sprite_index != spr_chrg
sprite_index = spr_idle
if sprite_index = spr_hurt or sprite_index = spr_chrg
{if image_index > 2
sprite_index = spr_idle}
}
else
{
if variable_local_exists("spr_fire") = 1
{
if speed = 0
{if sprite_index != spr_hurt and sprite_index != spr_fire
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt and sprite_index != spr_fire
sprite_index = spr_walk}
if sprite_index = spr_hurt or sprite_index = spr_fire
{if image_index > 2
sprite_index = spr_idle}
}
else
{
if speed = 0
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}
}
}*/

if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}
if instance_exists(Player)
{
if point_distance(x,y,Player.x,Player.y) > 52
mp_potential_step(Player.x,Player.y,1,false)
}

if(instance_exists(enemy)){
    if goForIt
    {
        if instance_exists(target)
        {
        motion_add(point_direction(x,y,target.x,target.y),4);
        }
    }
}

if speed > 5
speed = 5

/*
if(alarm[0]>0)
{
sprite_index=sprAllyAppear;
}

/* */
/*  */
