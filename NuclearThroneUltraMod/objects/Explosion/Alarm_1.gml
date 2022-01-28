
repeat(1+irandom(4))
{
    with instance_create(x,y,Flame)
    {team = 2
    image_speed = 0.5+random(0.2);
    motion_add(random(360),1+random(3));
    }
}

