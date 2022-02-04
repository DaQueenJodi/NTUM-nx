var wratio = window_get_width()/room_width;
var hratio = window_get_height()/room_height;
var lplusratio = wratio/hratio;

if (lplusratio > 1) {
	var newwidth = room_width * lplusratio;
	var excesswidth = newwidth - room_width;
	
	var sprite = noone;
	
	switch (opt_sideart) {
		case 1:
			sprite = sprSideArt1;
			break;
		case 2:
			sprite = sprSideArt2;
			break;
		case 3:
			sprite = sprSideArt3;
			break;
		case 4:
			sprite = sprSideArt4;
			break;
		case 5:
			sprite = sprSideArt5;
			break;
		case 6:
			sprite = sprSideArt6;
			break;
		case 7:
			sprite = sprSideArt7;
			break;
		case 8:
			sprite = sprSideArt8;
			break;
		default:
			exit;
	}

	var tilex = -64;
	var tiley = -64;

	do {
		if (tiley > 240) {
			tilex -= 64;
			tiley = 0;
		} else {
			tiley += 64;
		}
		
		draw_sprite(sprite, 0, tilex, tiley);
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
		
		draw_sprite(sprite, 0, tilex, tiley);
	} until (tilex - 64 > room_width + excesswidth/2);
}