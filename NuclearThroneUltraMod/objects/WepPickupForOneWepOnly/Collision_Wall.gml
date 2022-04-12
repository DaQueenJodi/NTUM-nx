
if instance_exists(Player){
if Player.ultra_got[12]==0
    {
		var isNearPortal = false;
		if instance_exists(Portal)
		{
			var nearportal = instance_nearest(x,y,Portal)
			if (point_distance(x,y,nearportal.x,nearportal.y) < 96)
			{
				with other
				{
					instance_destroy();
					instance_create(x,y,FloorExplo)
				}
			}
		}
		if !isNearPortal
		{
			move_bounce_solid(true)
			move_outside_solid(point_direction(other.x+8,other.y+8,x,y),2)	
		}
    }
    else
    {
    mask_index=mskPickupThroughWall;
    alarm[1]=10;
    }
}

