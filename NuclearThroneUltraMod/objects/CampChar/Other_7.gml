if Menu.race = num
{
if sprite_index != spr_menu
{
if sprite_index = spr_to
sprite_index = spr_menu
else
{
sprite_index = spr_to
if num=15//atom fx
{
    repeat(5)
    {
    with instance_create(x,y,Smoke)
    motion_add(random(360),1+random(3))
    }
}
}
}
}
else
{
if sprite_index != spr_slct
{
if sprite_index = spr_from 
sprite_index = spr_slct
else
{
if num=15//atom fx
{
    repeat(5)
    {
    with instance_create(x,y,Smoke)
    motion_add(random(360),1+random(3))
    }
}
sprite_index = spr_from 
}
}
}

