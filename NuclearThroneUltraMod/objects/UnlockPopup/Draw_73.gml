if drawtext
{
draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_set_colour(c_black);
if instance_exists(LevCont)
draw_text(x-(string_width(string_hash_to_newline(mytext))*0.5),y-15-(string_height(string_hash_to_newline(mytext))*0.5)-32,string_hash_to_newline(mytext));
else
draw_text(x-(string_width(string_hash_to_newline(mytext))*0.5),y-15-(string_height(string_hash_to_newline(mytext))*0.5),string_hash_to_newline(mytext));

draw_set_colour(c_white);
if instance_exists(LevCont)
draw_text(x-(string_width(string_hash_to_newline(mytext))*0.5),y-16-(string_height(string_hash_to_newline(mytext))*0.5)-32,string_hash_to_newline(mytext));
else
draw_text(x-(string_width(string_hash_to_newline(mytext))*0.5),y-16-(string_height(string_hash_to_newline(mytext))*0.5),string_hash_to_newline(mytext));

draw_set_halign(fa_center)
}

