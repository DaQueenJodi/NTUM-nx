if alarm[3]>5
{
    if right = 1
    {
	    motion_add(90,10);
	    direction=90;
    }
    else
    {
		motion_add(270,10);
		direction=270;
    }
}

