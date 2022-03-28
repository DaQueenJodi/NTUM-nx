///scrDrawHelp();
// /@description
///@param
function scrDrawHelp(txt){
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	var xx = __view_get( e__VW.XView, 0 )+110;
	var yy = __view_get( e__VW.YView, 0 )+20;
	draw_set_colour(c_black);
	draw_set_alpha(0.4);
	draw_rectangle(xx-2,yy-2,xx+string_width(txt)+2,yy+string_height(txt)+2,false);
	draw_set_alpha(1);
	draw_set_colour(c_black);
	draw_text(xx+1,yy+1,txt);
	draw_set_colour(c_white);
	draw_text(xx,yy,txt);
}