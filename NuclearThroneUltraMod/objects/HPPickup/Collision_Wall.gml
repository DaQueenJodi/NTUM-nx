if instance_exists(Player){
if Player.ultra_got[12]==0
    {
    move_bounce_solid(false)
    }
    else
    {
    //x+=lengthdir_x(8,point_direction(x,y,Player.x,Player.y))
    //y+=lengthdir_y(8,point_direction(x,y,Player.x,Player.y))4
    alarm[1]=10;
    mask_index=mskPickupThroughWall;
    }
}

