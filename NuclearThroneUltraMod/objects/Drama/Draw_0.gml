draw_set_alpha(0.6)
draw_set_color(c_black)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
draw_set_alpha(1)
draw_set_color(c_black)

draw_text(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+81,string_hash_to_newline(string(name)))
draw_text(__view_get( e__VW.XView, 0 )+161,__view_get( e__VW.YView, 0 )+81,string_hash_to_newline(string(name)))
draw_text(__view_get( e__VW.XView, 0 )+161,__view_get( e__VW.YView, 0 )+80,string_hash_to_newline(string(name)))
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+80,string_hash_to_newline(string(name)))

/*
draw_set_color(c_black)
draw_rectangle(view_xview,view_yview,view_xview+view_wview,view_yview+64,0)
draw_rectangle(view_xview,view_yview+view_hview,view_xview+view_wview,view_yview+view_hview-64,0)
*/

/* */
/*  */
