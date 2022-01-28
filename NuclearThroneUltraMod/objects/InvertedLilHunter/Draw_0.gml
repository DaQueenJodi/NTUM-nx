if gunangle <= 180
draw_sprite_ext(sprInvertedLilHunterGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
draw_sprite_ext(sprInvertedLilHunterGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)

if shadowdraw
draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ));

