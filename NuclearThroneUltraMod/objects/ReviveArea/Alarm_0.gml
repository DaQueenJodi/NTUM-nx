if instance_exists(Corpse)
{
    if place_meeting(x,y,Corpse)
    {
with Corpse
{
    if place_meeting(x,y,ReviveArea)
    {
    instance_create(x,y,ReviveFX)
    with instance_change(Freak,true)
    {raddrop=0;}
    
    }
}
    }
}

instance_destroy();

