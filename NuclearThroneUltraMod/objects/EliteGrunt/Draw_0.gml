if rolltime>20
{
draw_sprite_ext(sprEliteGruntFlame,-1,x+lengthdir_x(6,direction+180),y+lengthdir_y(6,direction+180),1,1,direction+180,c_white,1)
}
else if rolltime>0
{
draw_sprite_ext(sprEliteGruntFlameStop,-1,x+lengthdir_x(6,direction+180),y+lengthdir_y(6,direction+180),1,1,direction+180,c_white,1)
}

if gunangle <= 180
draw_sprite_ext(sprElitePopoGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
if gunangle > 180
draw_sprite_ext(sprElitePopoGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)



