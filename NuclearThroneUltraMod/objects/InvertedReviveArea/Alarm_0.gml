if instance_exists(Corpse)
{
    if place_meeting(x,y,Corpse)
    {
with Corpse
{
    if place_meeting(x,y,InvertedReviveArea)
    {
    instance_create(x,y,ReviveFX)
    with instance_change(InvertedFreak,true)
    {raddrop=0;}
    
    }
}
    }
}

instance_destroy();

