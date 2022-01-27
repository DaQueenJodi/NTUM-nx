if instance_exists(Player){
if Player.ultra_got[12]==0
    {
    move_bounce_solid(true)
    move_outside_solid(point_direction(other.x+8,other.y+8,x,y),2)
    }
    else
    {
    mask_index=mskPickupThroughWall;
    alarm[1]=10;
    }
}

