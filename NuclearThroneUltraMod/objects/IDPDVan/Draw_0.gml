draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)

if speed>1 && y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )//moving and vertical inside screen
{
    if x < __view_get( e__VW.XView, 0 ) //on the left
    {
    
    draw_sprite(sprNotice,-1,__view_get( e__VW.XView, 0 )+4,y);
    
    }
    else if x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )//on the right
    {
    
    draw_sprite(sprNotice,-1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4,y);
    
    }
}

