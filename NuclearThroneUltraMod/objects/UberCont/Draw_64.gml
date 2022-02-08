var wratio = window_get_width()/room_width;
var hratio = window_get_height()/room_height;
var lplusratio = wratio/hratio;
if (lplusratio > 1) {
	var newwidth = room_width * lplusratio;
	var excesswidth = newwidth - room_width;
	
	var tilex = -64;
	var tiley = -64;

	do {
		if (tiley > 240) {
			tilex -= 64;
			tiley = 0;
		} else {
			tiley += 64;
		}
		
		draw_sprite(sprSideArt, opt_sideart, tilex, tiley);
	} until (tilex + 64 < -excesswidth/2);
	
	tilex = room_width;
	tiley = -64;

	do {
		if (tiley > 240) {
			tilex += 64;
			tiley = 0;
		} else {
			tiley += 64;
		}
		
		draw_sprite(sprSideArt, opt_sideart, tilex, tiley);
	} until (tilex - 64 > room_width + excesswidth/2);
}