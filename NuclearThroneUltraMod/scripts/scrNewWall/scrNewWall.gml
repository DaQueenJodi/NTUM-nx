function scrNewWall() {
	if !place_meeting(x,y+16,Floor)
	visible = 0
	else
	visible = 1



	if place_free(x-16,y)
	l = 0
	else
	l = 4

	if place_free(x+16,y)
	w = 24-l
	else
	w = 20-l

	if place_free(x,y-16)
	r = 0
	else
	r = 4

	if place_free(x,y+16)
	h = 24-r
	else
	h = 20-r




}
