draw_self();
draw_set_color(c_dkgray)

draw_set_font(fntM)
draw_set_valign(fa_bottom)
draw_set_halign(fa_right)


if place_meeting(x,y,ShopSelector)
{
depth = selected;

drawx = x
drawy = y

if drawx-string_width(string_hash_to_newline(txt))/2-2 < __view_get( e__VW.XView, 0 )+2
drawx = __view_get( e__VW.XView, 0 )+4+string_width(string_hash_to_newline(txt))/2

if drawx+string_width(string_hash_to_newline(txt))/2+2> __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-2
drawx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4-string_width(string_hash_to_newline(txt))/2

draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(drawx-string_width(string_hash_to_newline(txt))/2-2,drawy-17-string_height(string_hash_to_newline(txt)),drawx+string_width(string_hash_to_newline(txt))/2+2,drawy-12,0)
draw_set_alpha(1)


draw_sprite_ext(sprMenuPointer,0,x,drawy-12,1,1,0,c_white,0.8)

draw_text(drawx+string_width(string_hash_to_newline(txt))/2,drawy-13,string_hash_to_newline(string(txt)))
draw_text(drawx+string_width(string_hash_to_newline(txt))/2+1,drawy-13,string_hash_to_newline(string(txt)))
draw_text(drawx+string_width(string_hash_to_newline(txt))/2+1,drawy-14,string_hash_to_newline(string(txt)))
draw_set_color(c_silver)
draw_text(drawx+string_width(string_hash_to_newline(txt))/2,drawy-14,string_hash_to_newline(string(txt)))
draw_set_color(c_white)
//draw_text(drawx+string_width(txt)/2,drawy-14-string_height(txt),string(skill_name[skill]))
}
else
{
	depth = unselected;	
}

