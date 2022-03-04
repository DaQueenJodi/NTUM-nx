if alarm[3]>5
{
    if right=1
    {
    motion_add(0,10);
    direction=0;
    }
    else
    {
    motion_add(180,10);
	direction=180;
    }
}

