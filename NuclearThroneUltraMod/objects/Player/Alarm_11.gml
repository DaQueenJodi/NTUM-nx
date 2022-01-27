/// @description Hunter crackshot
with Marker{
if MarkerNr==other.crackshotsfired-1{
            var mox,moy;
            var len,dir;
            if UberCont.opt_fulscrn=1
            len=point_distance(Player.x,Player.y,target.x,target.y)*4
            else{
            len=point_distance(Player.x,Player.y,target.x,target.y)
            len*=(window_get_height())*0.0038;
            }
            
            dir=point_direction(Player.x,Player.y,target.x,target.y);
            
            mox=(window_get_x()+window_get_width()*0.5)+lengthdir_x(len,dir);
            moy=(window_get_y()+window_get_height()*0.5)+lengthdir_y(len,dir);
            
            if mox > window_get_x()+window_get_width()
            mox = window_get_x()+window_get_width()-8;
            if mox < window_get_x()
            mox = window_get_x()+8;
            if moy > window_get_y()+window_get_height()
            moy = window_get_y()+window_get_height()-8;
            if moy < window_get_y()
            moy = window_get_y()+8;
            
            display_mouse_set(mox,moy);
}
            //with Player{scrFire()}
            }

scrFire();     

crackshotsfired--;

if crackshotsfired>0
{
alarm[11]=1;
}



