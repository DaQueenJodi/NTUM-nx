///drawMenuBSkin();
// /@description
///@param
function drawMenuBSkin(skin,race,colour){
	var xx = __view_get( e__VW.XView, 0 )+96
	var yy = __view_get( e__VW.YView, 0 )+64
	if (skin == 1)
	{
		draw_sprite_ext(asset_get_index("sprMutant" + string(race)+"BIdle"),imageIndex,xx,yy,1,1,0,colour,1);
	}
	else if (skin == 2)
	{
		draw_sprite_ext(asset_get_index("sprMutant" + string(race)+"CIdle"),imageIndex,xx,yy,1,1,0,colour,1);
	}
}