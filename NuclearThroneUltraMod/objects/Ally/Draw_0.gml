
if gunangle <= 180
draw_sprite_ext(sprBanditGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
draw_sprite_ext(sprBanditGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)


if (mouse_x < x+16 and mouse_y < y+16 and mouse_x > x-16 and mouse_y > y-16)
{//name
draw_set_color(c_white);
draw_text(x,y,string_hash_to_newline(name));
}

