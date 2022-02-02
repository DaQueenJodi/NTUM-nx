///drawMenuBSkin();
// /@description
///@param
function drawMenuBSkin(skin,race){
	var xx = __view_get( e__VW.XView, 0 )+14
	var yy = __view_get( e__VW.YView, 0 )+110
	if (skin == 1)
	{
		draw_sprite(asset_get_index("sprMutant" + string(race)+"BIdle"),imageIndex,xx,yy);
	}
	else if (skin == 2)
	{
		draw_sprite(asset_get_index("sprMutant" + string(race)+"CIdle"),imageIndex,xx,yy);
	}
}