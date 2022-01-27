event_inherited()


repeat(10)
{with instance_create(x,y,Dust)
motion_add(random(360),3)
}

instance_create(x,y,WaterMineExplo);

