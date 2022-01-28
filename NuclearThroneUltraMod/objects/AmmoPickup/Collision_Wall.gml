if instance_exists(Player){
if Player.ultra_got[12]==0
    {
    move_bounce_solid(false)
    //motion_add(point_direction(x,y,Player.x,Player.y),0.8);
    }
    else
    {
    mask_index=mskPickupThroughWall;
    alarm[1]=10;
    //x+=lengthdir_x(8,point_direction(x,y,Player.x,Player.y))
    //y+=lengthdir_y(8,point_direction(x,y,Player.x,Player.y))
    }
}

