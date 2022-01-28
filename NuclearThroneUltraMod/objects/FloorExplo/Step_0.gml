if(instance_exists(Player))
{if Player.area=7{

    if(random(100)<1)
    {
    instance_create(x+8+random_range(-8,8),y+8+random_range(-8,8),LavaBubble);    
    
    }   

}}

