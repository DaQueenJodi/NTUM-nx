if instance_exists(Player){
if Player.ultra_got[12]==0
    {
    move_bounce_solid(false)
    }
    else
    {
    mask_index=mskPickupThroughWall;
    alarm[1]=10;
    }
}

