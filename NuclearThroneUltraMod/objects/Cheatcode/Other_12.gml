/// @description Export textures
/*
debug("EXPORTING WEAPONS");
scrWeapons();
var i = 0;
var scl = 2;
repeat(maxwep)
{
	var spr = wep_sprt[i]
	var surf = surface_create(
	sprite_get_width(spr)*scl,
	sprite_get_height(spr)*scl);
	surface_set_target(surf);
	draw_sprite_ext(spr, 0,
	sprite_get_xoffset(spr)*scl,
	sprite_get_yoffset(spr)*scl,
	scl,scl,0,c_white,1);
	surface_reset_target();
	surface_save(surf,string(i)+wep_name[i]+".png");
	surface_free(surf);
	i ++;
}
*/
